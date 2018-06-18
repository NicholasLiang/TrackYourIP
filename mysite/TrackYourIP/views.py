from django.shortcuts import render

# Create your views here.

from django.http import HttpResponse
from django.template import loader

import requests

def home(request):
    response = requests.get('http://freegeoip.net/json/')
    geodata = response.json()
    template = loader.get_template('TrackYourIP/home.html')
    return HttpResponse(template.render({
        'ip': geodata['ip'],
        'country': geodata['country_name']
    }, request))

# def home(request):
#     response = requests.get('http://freegeoip.net/json/')
#     geodata = response.json()
    # return render(request, 'TrackYourIP/home.html', {
    #     'ip': geodata['ip'],
    #     'country': geodata['country_name']
    # })
