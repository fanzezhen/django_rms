#coding:utf-8
from __future__ import unicode_literals

from django.db import models
from django.utils.encoding import smart_unicode

# Create your models here.

class Mlogin(models.Model):
    name = models.CharField('姓名', max_length = 21, null = True, blank = True)
    email = models.EmailField('邮箱')
    password = models.CharField('密码', max_length = 21)
    timestamp = models.DateTimeField(auto_now_add = True, auto_now = False)
    updated = models.DateTimeField(auto_now_add = False, auto_now = True)
    
    def __unicode__(self):
        return smart_unicode(self.email)

class FirstRestaurant(models.Model):
    name = models.CharField(max_length = 21)
    price = models.CharField(max_length = 10)
    introduction = models.TextField(default = '鲁大第一餐厅经典美食！')
    timestamp = models.DateTimeField(auto_now_add = True, auto_now = False)
    updated = models.DateTimeField(auto_now_add = False, auto_now = True)  
    
class FirstMessage(models.Model):
    message = models.TextField()
    timestamp = models.DateTimeField(auto_now_add = True, auto_now = False)

class SecondRestaurant(models.Model):
    name = models.CharField(max_length = 21)
    price = models.CharField(max_length = 10)
    introduction = models.TextField(default = '鲁大第二餐厅经典美食！')
    timestamp = models.DateTimeField(auto_now_add = True, auto_now = False)
    updated = models.DateTimeField(auto_now_add = False, auto_now = True) 

class SecondMessage(models.Model):
    message = models.TextField()
    timestamp = models.DateTimeField(auto_now_add = True, auto_now = False)

