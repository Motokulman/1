# Generated by Django 3.0.3 on 2020-09-08 10:35

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('catalog', '0001_initial'),
        ('materials', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='shell',
            name='roof_material_type',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='materials.RoofCoverType', verbose_name='Тип материала кровли'),
        ),
        migrations.AddField(
            model_name='shell',
            name='socle_material_type',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='socle_material_type', to='catalog.FacadeMaterialType', verbose_name='Тип материала облицовки цоколя'),
        ),
        migrations.AddField(
            model_name='shell',
            name='wall_material_type_0',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='wall_material_type', to='catalog.FacadeMaterialType', verbose_name='Тип материала облицовки основной части стен'),
        ),
        migrations.AddField(
            model_name='plan',
            name='author',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL, verbose_name='Автор'),
        ),
        migrations.AddField(
            model_name='facadematerial',
            name='material_type',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='catalog.FacadeMaterialType', verbose_name='Автор'),
        ),
        migrations.AddField(
            model_name='facadematerial',
            name='plan',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='catalog.Plan'),
        ),
    ]