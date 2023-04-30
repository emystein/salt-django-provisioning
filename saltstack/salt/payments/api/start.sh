#!/bin/bash
source /var/www/payments/api/venv/bin/activate
cd /var/www/payments/api
gunicorn --bind 0.0.0.0:5000 app:app
