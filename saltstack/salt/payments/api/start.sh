#!/bin/bash
source /var/www/payments/api/venv/bin/activate
cd /var/www/payments/api/repo
gunicorn payments.wsgi
