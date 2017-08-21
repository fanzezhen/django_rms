from __future__ import unicode_literals
from django.utils.encoding import smart_unicode
from django.db import models

# Create your models here.

class Details(models.Model):
    director1 = models.CharField(max_length = 21)
    href1 = models.CharField(max_length = 21)
    director2 = models.CharField(max_length = 21)
    href2 = models.CharField(max_length = 21)
    header = models.CharField(max_length = 21)
    p1 = models.TextField()
    p2 = models.TextField()
    date = models.DateField()
    
    def __unicode__(self):
        return smart_unicode(self.header)

    