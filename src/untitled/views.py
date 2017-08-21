#coding:utf-8

from django.shortcuts import render_to_response
from django.http.response import HttpResponseRedirect

from .models import MessagePost

# Create your views here.

def untitled(request):
    posts = MessagePost.objects.all()
    errors = []
    if request.method == 'POST': 
        p = MessagePost(name = request.POST.get('name', ''), 
                        email = request.POST.get('email', ''), 
                        content = request.POST.get('content', ''), )
        if not request.POST.get('content', ''):
            errors.append('Please enter the message. ')
        if request.POST.get('email') and '@' not in request.POST['email']:
            errors.append('Please enter the valid e-mail address. ')
        elif request.POST.get('email') and len(request.POST['email']) < 13:
            errors.append('Please enter the length enough valid e-mail address. ')
        if not errors: 
            if not p.name:
                p.name = '(匿名)'
            p.save()
            return HttpResponseRedirect('/untitled/', locals())
        name = p.name
        content = p.content
        email = p.email
    return render_to_response('untitled.html', locals())

