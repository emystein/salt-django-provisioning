/var/www/payments/api/venv:
  virtualenv.managed:
    - system_site_packages: False
    - requirements: salt://payments/api/requirements.txt

/var/www/payments/api/app.py:
    file.managed:
        - source: salt://payments/api/app.py
        - makedirs: True

/var/www/payments/api/start.sh:
    file.managed:
        - source: salt://payments/api/start.sh
        - mode: 0744
        - makedirs: True

/etc/supervisor/conf.d/payments-api.conf:
    file.managed:
        - source: salt://payments/api/supervisor.conf
        - require:
            - pkg: supervisor
            - file: /var/www/payments/api/start.sh

