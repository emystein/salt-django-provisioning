#!/bin/bash
source /var/www/payments/api/venv/bin/activate
cd /var/www/payments/api/repo
gunicorn --bind=0.0.0.0:8000 payments.wsgi
