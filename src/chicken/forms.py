#coding:utf-8
'''
Created on 2016年5月16日

@author: 阿朕
'''

from django import forms
from .models import Mlogin

class LoginForm(forms.Form):
    username = forms.CharField(label='用户名', max_length=100)
    password = forms.CharField(label='密码', widget=forms.PasswordInput())
    class Meta:
        fields = "__all__" 

class MloginForm(forms.ModelForm):
    password = forms.CharField(label='密码', widget=forms.PasswordInput(), max_length = 21)
    class Meta:
        model = Mlogin
        fields = "__all__" 
        