payments-api-packages:
    pip.installed:
        - requirements: salt://payments/api/requirements.txt
        - require:
            - pkg: python

/var/www/payments/api/app.py:
    file.managed:
        - source: salt://payments/api/app.py
        - makedirs: True

/etc/supervisor/conf.d/payments-api.conf:
    file.managed:
        - source: salt://payments/api/supervisor.conf
        - require:
            - pkg: supervisor
