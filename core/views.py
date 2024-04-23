from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    return render(request, 'core/home.html')

def submission_form(request):
    # Handle form submission here if needed
    return render(request, 'core/submission_form.html')
