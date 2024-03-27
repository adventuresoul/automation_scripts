#!/bin/bash

############################################################################################################
# Script to automate the process of creating and starting a django project and installing necessary packages
# Just create an empty folder and run this file
# Must have an activated virtual env

pip install django

echo "Enter the name of the django project: "
read project_name

django-admin startproject $project_name
cd $project_name

echo "Enter the django app name: "
read app_name

python manage.py startapp $app_name

python manage.py check
python manage.py runserver
