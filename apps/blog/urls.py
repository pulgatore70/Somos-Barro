from django.contrib import admin
from django.urls import include,path
from django.urls import re_path
from django.conf.urls.static import static
from django.conf import settings
from apps.blog import views

urlpatterns = [
    path('', views.noticias, name='noticias'),
    path('<int:id>/', views.noticiasdetalle, name='noticiasdetalle'),
    path('new/', views.CrearNoticiaView.as_view(), name='CrearNoticiaView'),
    path('comentario/<int:id>/approve', views.comment_approve, name='comment_approve'),
    path('comentario/<int:id>/remove', views.comment_remove, name='comment_remove'),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT, show_indexes=True)
