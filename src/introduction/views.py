# -*- coding: utf-8 -*-
from django.shortcuts import render_to_response
from django.http.response import HttpResponseRedirect
from django.core.mail import send_mail
from .models import Details

# Create your views here.

def profile(request):
    details = Details.objects.all()
    return render_to_response('profile.html', locals())

def myprofile(request):
    return render_to_response('myprofile.html')

def wenprofile(request):
    return render_to_response('wen_profile.html')

def contact_me(request):
    errors = []
    if request.method == 'POST': 
        if not request.POST.get('name', ''):
            errors.append('Enter a name. ')
        if not request.POST.get('email'): 
            errors.append('Enter a e-mail address. ')
        elif '@' not in request.POST['email']:
            errors.append('Enter a valid e-mail address. ')
        elif len(request.POST['email']) < 13:
            errors.append('Please enter the length enough valid e-mail address. ')
        if not request.POST.get('subject', ''):
            errors.append('Enter a subject. ')
        if not request.POST.get('message', ''):
            errors.append('Enter a message. ')
        elif not len(request.POST['message']) > 1:
            errors.append('Please enter the length enough message. ')
        if not errors: 
            send_mail(
                request.POST['subject'], 
                'From ' + request.POST['name'] + '(' + request.POST['email'] + '): \n' + request.POST['message'], 
                '842618916@qq.com',
                ['254232406@qq.com'], 
                fail_silently = True, 
            )
            return HttpResponseRedirect('/feedback/thanks/')
    return render_to_response('contact_me.html', 
                              {'errors': errors,
                               'name': request.POST.get('name', 'Name'), 
                               'email': request.POST.get('email', 'E-mail'), 
                               'subject': request.POST.get('subject', 'Subject'), 
                               'message': request.POST.get('message', 'Message'), 
                              }
                             )
    