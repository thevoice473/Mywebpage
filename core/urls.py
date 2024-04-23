from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('submission_form/', views.submission_form, name='submission_form'),
]
