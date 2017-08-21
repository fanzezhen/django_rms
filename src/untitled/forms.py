#coding:utf-8
'''
Created on 2016年5月16日

@author: 阿朕
'''

from django import forms
from .models import MessagePost

class MessageForm(forms.ModelForm):
    class Meta:
        model = MessagePost
        fields = "__all__" 
        