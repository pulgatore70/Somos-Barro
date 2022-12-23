from django.db import models
from datetime import datetime
from django.utils import timezone

# Create your models here.

class Eventos(models.Model):
    titulo = models.CharField(max_length=255)
    cuerpo_evento = models.TextField()
    fecha = models.DateTimeField()
    hora_comienzo = models.TimeField()
    hora_finalizacion = models.TimeField()
    modalidad = models.BooleanField(default=True)
    lugar = models.CharField(max_length=100)
    metodo_pago = models.CharField(max_length=100)
    creado = models.DateTimeField(default=timezone.now)
    modificado = models.DateTimeField(auto_now=True)
    publicado = models.DateTimeField(blank=True, null=True)
    autor = models.ForeignKey('auth.User', on_delete=models.CASCADE)

    def modalidadPresencialVirtual(self):
        # Default = True -> Eso significa que por default la modalidad va a ser Presencial
        # Caso contrario que la modalidad sea Virtual, cambiará a False.
        self.modalidad = False
        self.save()
