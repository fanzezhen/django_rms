#coding:utf-8
'''
Created on 2016年5月25日

@author: 阿朕
'''
from django import forms

class ContactForm(forms.Form):
    subject = forms.CharField(max_length = 50)
    email = forms.EmailField()
    message = forms.CharField(widget = forms.Textarea)
    
    def clean_message(self):
        message = self.cleaned_data['message']
        num_words = len(message)
        if not num_words > 1 :
            raise forms.ValidationError('Not enough words! ')
        return message