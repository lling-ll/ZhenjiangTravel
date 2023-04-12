"""
Django settings for zhiqiTravel project.

Generated by 'django-admin startproject' using Django 2.1.2.

For more information on this file, see
https://docs.djangoproject.com/en/2.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.1/ref/settings/
"""

import os
import sys

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(BASE_DIR, 'apps'))
sys.path.insert(0, os.path.join(BASE_DIR, 'extra_apps'))

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '3^g$b&1yb9e0#=ptnhhig-3qc@fhw^0!%audvzsbk#2o9al04v'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

ALLOWED_HOSTS = ['*']


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    'diarys',
    'news',
    'operation',
    'scenicspots',
    'shop',
    'users',
    'pay',

    'xadmin',
    'crispy_forms',
    'DjangoUeditor',
    'captcha',
]

AUTH_USER_MODEL = 'users.MyUser'


MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'zhiqiTravel.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')]
        ,
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                # 处理静态问题件
                'django.template.context_processors.media'
            ],
        },
    },
]

WSGI_APPLICATION = 'zhiqiTravel.wsgi.application'


# Database
# https://docs.djangoproject.com/en/2.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'TravelWebsite',
        'USER': "root",
        'PASSWORD': "zhiqi",
        'HOST': "192.168.60.101",

    }
}


# Password validation
# https://docs.djangoproject.com/en/2.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/2.1/topics/i18n/

LANGUAGE_CODE = 'zh-hans'

TIME_ZONE = 'Asia/Shanghai'

USE_I18N = True

USE_L10N = True

USE_TZ = False


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.1/howto/static-files/

STATIC_URL = '/static/'
# STATICFILES_DIRS = [os.path.join(BASE_DIR, 'static')]
STATIC_ROOT = os.path.join(BASE_DIR, 'static')

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
MEDIA_DIRS = (
    os.path.join(BASE_DIR, 'media')
)

# 更改验证码类型
CAPTCHA_CHALLENGE_FUNCT = 'captcha.helpers.math_challenge'


EMAIL_HOST = 'smtp.163.com'
EMAIL_PORT = 25
EMAIL_HOST_USER = 'zhiqiproject@163.com'
EMAIL_HOST_PASSWORD = 'zhiqitravel123'
EMAIL_USE_TLS= False
EMAIL_FROM = 'ZhiqiTravel<zhiqiproject@163.com>'


# 支付宝设置
ALIPAY_APPID = '2016092000553427'
# 公钥
ALIPAY_PUBLIC_KEY_PATH = os.path.join(BASE_DIR, 'apps/pay/keys/alipay_public_key')
# 私钥
APP_PRIVATE_KEY_PATH = os.path.join(BASE_DIR, 'apps/pay/keys/alipay_app_private_key')
# 接口
ALIPAY_URL = 'https://openapi.alipaydev.com/gateway.do?'
# 支付关闭时间：
ALIPAY_CLOSE_TIME = '60m'

DOMAIN_NAME = 'http://127.0.0.1:8000/'
