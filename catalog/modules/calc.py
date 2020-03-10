from catalog.models import *
from django.contrib.auth.models import User
from django.contrib.auth.models import Permission, Group
from catalog.modules import solid_ceramic_brick
from django.core import serializers
from django.shortcuts import get_object_or_404
import json
import math

# Нащи вычисления:

def get_city(request):
    profile = Profile.objects.get(user__username=request.user)
    city_name = profile.city  # кзнаем из профиля город пользователя
    city = City.objects.get(name=city_name)  # получаем объект города
    return city

def calc(request):
    
    indoor_temperature = 20  # температура по умолчанию внутри помещения
    # получаем профиль текущего пользователя
    # profile = Profile.objects.get(user__username=request.user)
    # city_name = profile.city  # кзнаем из профиля город пользователя
    # city = City.objects.get(name=city_name)  # получаем объект города
    city = get_city()
    # определяем ГСОП https://www.teplo-info.com/snip/otopitelniy_period
    gsop = int((indoor_temperature - city.heating_period_temperature)
               * city.heating_period_duration)
    R_req = {}  # определяем тепловое сопротивленеие
    R_req["wall"] = round(0.00035*gsop + 1.4, 1)
    R_req["roof"] = round(0.0005*gsop + 2.2, 1)
    R_req["floor"] = round(0.00045*gsop + 1.9, 1)
    # определяем тепловое сопротивленеие для окон.Оно нелинейно меняестся: СП 50.13330.2012 Тепловая защита зданий., табл 4
    if gsop <= 6000:
        R_req["window"] = round(0.000075*gsop + 0.15, 2)
    elif gsop < 8000:
        R_req["window"] = round(0.0000833333*gsop + 0.1, 2)
    else:
        R_req["window"] = round(0.00008125*gsop + 0.05, 2)

    return gsop, R_req


def calc_variants(request, pk):
    calc(request)  # вызвали чтоб найти город, в котором живет текущий пользователь
    f = ''
    point0 = dict()
    point1 = dict()
    square = {
        "living_partition": 0,
        "uninhabited_partition": 0,
        "outdoor_living_bearing": 0,
        "indoor_living_bearing": 0,
        "outdoor_uninhabited_bearing": 0,
        "indoor_uninhabited_bearing": 0
    }
    errMsg = list()

    # получим объемы
    plan = get_object_or_404(Plan, pk=pk)  # получили объект проекта
    scheme = json.loads(plan.scheme)
    elements = scheme['elements']
    lines = scheme['lines']
    points = scheme['points']
    # element = scheme['elements']
    # print("'scheme'  в  'plan'")
    # plan = serializers.serialize('json', plan)

    # получим площадь различных стен

    for element in elements:
        # print("'element'  в  'scheme.elements'")
        # если это окружность
        if element['distance'] > 0 and len(element['ids']) == 1:
            length = element.distance * 3.14  # поскольку пока distance равна радиусу
        else:  # бежим по массиву id линий, это м.б. одна линия или несколько, если это эркер
            for line_id in element['ids']:
                for line in lines:
                    if line['id'] == line_id:
                        for point in points:
                            if point['id'] == line['id0']:
                                point0['x'] = point['x']
                                point0['y'] = point['y']
                            if point['id'] == line['id1']:
                                point1['x'] = point['x']
                                point1['y'] = point['y']
            length = math.sqrt(
                (point0['x'] - point1['x']) ** 2 + (point0['y'] - point1['y']) ** 2)
        # переводим в полщадь в метрах квадратных
        s = round(length/1000 * 3, 2)

        err = list()
        if element['type'] == "wall":
            if element['bearType'] == "partition":
                if element['liveType'] == "living":
                    square['living_partition'] = square['living_partition'] + s
                elif element['liveType'] == "uninhabited":
                    square['uninhabited_partition'] = square['uninhabited_partition'] + s
                else:
                    err.append(
                        "Не задано: перегородка смежная с жилым помещением или нет")
                    err.append(element['id'])
            elif element['bearType'] == "bearing":
                if element['liveType'] == "living":
                    if element['outdoorType'] == "outdoor":
                        square['outdoor_living_bearing'] = square['outdoor_living_bearing'] + s
                    elif element['outdoorType'] == "indoor":
                        square['indoor_living_bearing'] = square['indoor_living_bearing'] + s
                    else:
                        err.append(
                            "Не задано: несущая стена, смежная с жилым помещением, внутренняя или ограждающая?")
                        err.append(element['id'])
                elif element['liveType'] == "uninhabited":
                    if element['outdoorType'] == "outdoor":
                        square['outdoor_uninhabited_bearing'] = square['outdoor_uninhabited_bearing'] + s
                    elif element['outdoorType'] == "indoor":
                        square['indoor_uninhabited_bearing'] = square['indoor_uninhabited_bearing'] + s
                    else:
                        err.append(
                            "Не задано: несущая стена, смежная с нежилым помещением, внутренняя или ограждающая?")
                        err.append(element['id'])
            else:
                err.append("Не задано: перегородка или несущая стена?")
                err.append(element['id'])
            errMsg.append(err)

        # ((element.distance > 0) && (element.ids.length == 1))

    # опять пробежимся по массиву материалов каждого поставщика, теперь с вычислением стоимости

    group = Group.objects.get(
        permissions__codename='add_rockwallmaterialprice')
    # получили всех пользователей,являющихся поставщиками из города, в котором живет текущий пользователь
    users = User.objects.filter(groups=group).filter(
        profile__city__name=city.name)
    # Получим массив всех стеновых материалов, которые есть у местных поставщиков и сразу сделаем этот массив с уникальными элементами. исключая лицевой кирпич
    wall_rock_materials = RockWallMaterialPrice.objects.filter(
        owner__in=users).exclude(name__purpose='fasade').distinct('name_id')
    # определим уникальные алгоритмы
    algs = list()
    for material in wall_rock_materials:
        if material.name.algorithm.identifier not in algs:
            algs.append(material.name.algorithm.identifier)
    algorithms = Algorithm.objects.filter(identifier__in=algs)

    # пробежимся по списку алгоритмов и посчитаем объемы для каждого из них

    # пробежимся по массиву материалов, и посчитаем каждый 
    # for material in wall_rock_materials:
    #     if material.name.algorithm.identifier == 'solid_ceramic_brick':
    #         f = solid_ceramic_brick.algorithm(material)


    # отсортируем полученный массив по стоимости и выдадим его как результат
    return algorithms

def get_materials(city): # получение списка материалов, доступных в городе пользователя
    group = Group.objects.get(permissions__codename='add_rockwallmaterialprice')
    # получили всех пользователей,являющихся поставщиками из города, в котором живет текущий пользователь
    users = User.objects.filter(groups=group).filter(profile__city__name=city.name)
    # Получим массив всех стеновых материалов, которые есть у местных поставщиков и сразу сделаем этот массив с уникальными элементами. исключая лицевой кирпич
    wall_rock_materials = RockWallMaterialPrice.objects.filter(owner__in=users).exclude(name__purpose='fasade').distinct('name_id')
    return wall_rock_materials

def get_algorithms(wall_rock_materials):
    # определим уникальные алгоритмы
    algs = list()
    for material in wall_rock_materials:
        if material.name.algorithm.identifier not in algs:
            algs.append(material.name.algorithm.identifier)
    algorithms = Algorithm.objects.filter(identifier__in=algs)
    return algorithms