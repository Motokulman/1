from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('my_wall_materials_prices/', views.WallMaterialPricesListView.as_view(),
         name='my-wall-materials-prices'),
    path('my_work_prices/', views.works_content_list, name='my-work-prices'),
    path('my_pile_grillage_foundation_prices/<int:pk>',
         views.PileGrillageFoundationWorkPricesDetailView.as_view(), name='my-pile-grillage-foundation-prices'),
]

# All about plans
urlpatterns += [
    path('plans/', views.PlanListView.as_view(), name='plans'),
    path('plan/<int:pk>', views.PlanDetailView.as_view(), name='plan-detail'),
    path('plan/create/', views.PlanCreate.as_view(), name='plan_create'),
    path('plan/<int:pk>/delete/', views.PlanDelete.as_view(), name='plan_delete'),
]

# Редактирование схемы
urlpatterns += [
    path('plan/<int:pk>/edit_scheme/', views.edit_scheme, name='edit-scheme'),

]

# Создание пользователя
urlpatterns += [
    path('register/', views.register, name='register'),
]

# Изменение настроек пользователя - редактирование профиля
urlpatterns += [
    path('edit/', views.edit, name='edit'),
]

# Редактирование варианта
urlpatterns += [
    path('plan/<int:pk>/edit_variant/', views.edit_variant, name='edit-variant'),
]

# Сохранение схемы
urlpatterns += [
    path('plan/<int:pk>/edit_scheme/get_response',
         views.set_scheme, name='get_response'),
]

# Воспроизведение схемы
urlpatterns += [
    path('plan/<int:pk>/edit_scheme/get_plan',
         views.get_plan, name='get_plan'),
]

# получение расчета вариантов стоимости проекта
urlpatterns += [
    path('plan/<int:pk>/edit_scheme/get_cost',
         views.get_cost, name='get_cost'),
]
