#encoding=utf-8
from django.shortcuts import render_to_response
from django.core.mail import send_mail
from .forms import ContactForm
from django.http.response import  HttpResponse, HttpResponseRedirect

# Create your views here.

def contact_frame(request):
    if request.method == 'POST': 
        form = ContactForm(request.POST)
        if form.is_valid():
            cd = form.cleaned_data
            send_mail(
                cd['subject'], 
                'From ' + cd['email'] + ': \n\n' + cd['message'], 
                '842618916@qq.com', 
                ['254232406@qq.com'], 
                fail_silently = True, 
            )
            return HttpResponseRedirect('/feedback/thanks/')
    else:
        form = ContactForm(
                           initial = {'subject': '你好！', 'email': 'mailto@example.com', }
                          )
    return render_to_response('feedback.html', {'form': form})

def thanks(request):
    return HttpResponse('Your e-mail have sent success! ')