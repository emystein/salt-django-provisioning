#!/bin/bash
PAYMENTS_API_ROOT_DIRECTORY=/var/www/payments/api
source $PAYMENTS_API_ROOT_DIRECTORY/venv/bin/activate
cd $PAYMENTS_API_ROOT_DIRECTORY/repo
gunicorn --bind unix:$PAYMENTS_API_ROOT_DIRECTORY/payments.sock payments.wsgi
