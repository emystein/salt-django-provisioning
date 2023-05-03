#!/bin/bash
source /var/www/payments/api/venv/bin/activate
cd /var/www/payments/api/repo
gunicorn --bind unix:/var/www/payments/api/payments.sock payments.wsgi
