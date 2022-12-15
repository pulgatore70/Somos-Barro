from django.contrib import admin
from apps.blog import models

# Register your models here.

admin.site.register(models.Categorias, admin.ModelAdmin)
admin.site.register(models.Noticias, admin.ModelAdmin)
admin.site.register(models.Comentarios, admin.ModelAdmin)