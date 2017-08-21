# -*- coding: utf-8 -*-
from django.shortcuts import render_to_response, RequestContext
from django.http.response import HttpResponseRedirect
from .forms import MloginForm, LoginForm
from .models import FirstRestaurant, SecondRestaurant, FirstMessage, SecondMessage, Mlogin

# Create your views here.

#登录
def login(request):
    errorsLogin = []
    if request.method == 'POST':
        if request.POST.get('username') and request.POST.get('password'): 
            uf = LoginForm(request.POST)
            if uf.is_valid():
                #获取表单用户密码
                username = uf.cleaned_data['username']
                password = uf.cleaned_data['password']
                #获取的表单数据与数据库进行比较
                user = Mlogin.objects.filter(email__icontains = username, password__icontains = password)
                if user:
                    return render_to_response('success.html', locals())
                else:
                    errorsLogin.append('帐号或密码错误！')
        else : 
            errorsLogin.append('账号或密码不能为空！')
        username = request.POST.get('username')
        password = request.POST.get('password')
    return render_to_response('login.html', locals())

def register(request):
    form = MloginForm(request.POST or None)
    if form.is_valid():
        save_it = form.save(commit = False)
        save_it.save()
        form = MloginForm(None)
        mlogin = '注册成功！'
        return render_to_response('login.html', locals())
    if request.POST.get('email'):
        email = request.POST.get('email')
    if request.POST.get('password'):
        password = request.POST.get('password')
    if request.POST.get('name'):
        name = request.POST.get('name')
    return render_to_response('register.html', locals())

def homepage(request):
    firstPosts = FirstRestaurant.objects.all()
    secondPosts = SecondRestaurant.objects.all()
    
    errorSearches = []
    if 'dish' in request.GET: 
        dish = request.GET['dish']
        if not dish:
            errorSearches.append('Enter a name of the dish. ')
        elif len(dish) > 20:
            errorSearches.append('Please enter less than 20 characters. ')
        else:
            dishs1 = FirstRestaurant.objects.filter(name__icontains = dish)
            dishs2 = SecondRestaurant.objects.filter(name__icontains = dish)
            num = len(dishs1) + len(dishs2) 
            return render_to_response('search_results.html', locals())
    
    form = MloginForm(request.POST or None)
    if form.is_valid():
        save_it = form.save(commit = False)
        save_it.save()
        form = MloginForm(None)
        mlogin = '注册成功！'
        return render_to_response('homepage.html', locals())
        
    return render_to_response('homepage.html', locals(), context_instance = RequestContext(request))

def first_canteen(request):
    firstPosts = FirstRestaurant.objects.all()
    num = len(firstPosts)*46+80
    messages = FirstMessage.objects.all()
    errors = []
    if request.method == 'POST': 
        p = FirstMessage(message = request.POST.get('message', ''), )
        if not request.POST.get('message', ''):
            errors.append('Message can not be empty . ')
        if not errors: 
            p.save()
            return HttpResponseRedirect('', locals())
    
    return render_to_response('first_canteen.html', locals())


def second_canteen(request):
    secondPosts = SecondRestaurant.objects.all()
    num = len(secondPosts)*46+80
    messages = SecondMessage.objects.all()
    errors = []
    if request.method == 'POST': 
        p = SecondMessage(message = request.POST.get('message', ''), )
        if not request.POST.get('message', ''):
            errors.append('Message can not be empty . ')
        if not errors: 
            p.save()
            return HttpResponseRedirect('', locals())
    
    return render_to_response('second_canteen.html', locals())



