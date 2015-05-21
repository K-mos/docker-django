#!/bin/bash

cd /home/django/app/

if [ -f "/home/django/app/requirements.txt" ]
then
    pip install --user -r /home/django/app/requirements.txt
fi

bash
