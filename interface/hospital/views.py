from django.shortcuts import render
from django.http import HttpResponse

from .models import Consulta
# Create your views here.


def home(request):
    consulta = Consulta.objects.all()
    return render(request, 'home.html',{'cons': consulta})