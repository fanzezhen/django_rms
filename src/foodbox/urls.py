"""foodbox URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""

from django.conf.urls import include, url
from django.contrib import admin
admin.autodiscover()

from django.conf import settings
from django.conf.urls.static import static

from chicken.views import homepage, first_canteen, second_canteen, login, register
from untitled.views import untitled
from feedback.views import contact_frame, thanks
from introduction.views import profile, myprofile, wenprofile, contact_me

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', login), 
    url(r'^login/$', homepage), 
    url(r'^register/$', register),
    url(r'^untitled/$', untitled), 
    url(r'^feedback/$', contact_frame), 
    url(r'^feedback/thanks/$', thanks), 
    url(r'^profile/$', profile), 
    url(r'^myprofile/$', myprofile), 
    url(r'^wenprofile/$', wenprofile),
    url(r'^contact_me/$', contact_me), 
    url(r'^firstcanteen/$', first_canteen), 
    url(r'^secondcanteen/$', second_canteen), 
 ]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root = settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root = settings.MEDIA_URL)

