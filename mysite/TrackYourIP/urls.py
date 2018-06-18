from django.urls import path
from . import views

app_name = 'TrackYourIP'
urlpatterns = [
    path('', views.home, name='home'),
]
