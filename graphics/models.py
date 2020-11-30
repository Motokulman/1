from django.db import models

class Texture(models.Model):
    """Текстуры"""

    name = models.TextField(blank=True, help_text="Имя тектуры (если есть)")
    
    px = models.FloatField(blank=True, null=True, help_text="Смещение X")
    py = models.FloatField(blank=True, null=True, help_text="Смещение Y")
    rx = models.FloatField(blank=True, null=True, help_text="Шаг X")
    ry = models.FloatField(blank=True, null=True, help_text="Шаг Y")
    
    wNa = models.IntegerField(blank=True, null=True, help_text="Рекомендуемое натяжение на объект по ширине")
    hNa = models.IntegerField(blank=True, null=True, help_text="Рекомендуемое натяжение на объект по высоте")

    original = models.ImageField(blank=True, help_text="Текстура оригинальная")
    small = models.ImageField(blank=True, help_text="Текстура маленькая")
    normal = models.ImageField(blank=True, help_text="Текстура нормального размера")
    icon = models.ImageField(blank=True, help_text="Иконка текстуры")

    info = models.TextField(blank=True, help_text="Информация о текстуре")

    class Meta:
        verbose_name = 'Текстура'
        verbose_name_plural = 'Текстуры'
    
    def __str__(self):
        return f'Текстура {self.name} '

    def get_absolute_url(self):
        """Returns the url to access a detail record for this Land."""
        return reverse('texture_detail', args=[str(self.id)])