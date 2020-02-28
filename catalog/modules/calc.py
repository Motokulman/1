from catalog.models import *
from django.contrib.auth.models import User
from django.contrib.auth.models import Permission, Group

# Нащи вычисления:
def calc(request):
    global city
    indoor_temperature = 20 # температура по умолчанию внутри помещения
    profile = Profile.objects.get(user__username=request.user) # получаем профиль текущего пользователя
    city_name = profile.city # кзнаем из профиля город пользователя
    city = City.objects.get(name=city_name) # получаем объект города   
    gsop = int((indoor_temperature - city.heating_period_temperature)*city.heating_period_duration) # определяем ГСОП https://www.teplo-info.com/snip/otopitelniy_period
    R_req = {} # определяем тепловое сопротивленеие      
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

def calc_variants(request):
    calc(request) #вызвали чтоб найти город, в котором живет текущий пользователь
    group = Group.objects.get(permissions__codename='add_rockwallmaterialprice')
    users = User.objects.filter(groups = group).filter(profile__city__name=city.name) # получили всех пользователей,являющихся поставщиками из города, в котором живет текущий пользователь
    return users
