from django.shortcuts import render

# Create your views here.

def eventos_idx(req):
    return render(req, 'eventos.html', {})