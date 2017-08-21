#coding:utf-8
from __future__ import unicode_literals

from django.db import models
from django.utils.encoding import smart_unicode

# Create your models here.

class MessagePost(models.Model):
    content = models.TextField()
    name = models.CharField('名字', max_length = 120, null = True, blank = True)
    email = models.EmailField('邮箱', blank = True)
    timestamp = models.DateTimeField(auto_now_add = True, auto_now = False)
    updated = models.DateTimeField(auto_now_add = False, auto_now = True)
    
    def __unicode__(self):
        return smart_unicode(self.name)+smart_unicode(self.email)
    
    class Meta:
        ordering = ['updated']