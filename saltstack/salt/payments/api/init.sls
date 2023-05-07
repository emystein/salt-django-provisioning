payments_api_git_repo:
    git.latest:
        - name: https://github.com/emystein/stripe-payments-subscriber.git
        - branch: master
        - target: /var/www/payments/api/repo

/var/www/payments/api/repo/payments/.env:
  file.managed:
    - source: salt://payments/api/env
    - makedirs: True
    - template: jinja

/var/www/payments/api/venv:
  virtualenv.managed:
    - system_site_packages: False
    - requirements: /var/www/payments/api/repo/requirements.txt
    - require:
        - git: payments_api_git_repo

/var/www/payments/api/start.sh:
    file.managed:
        - source: salt://payments/api/start.sh
        - mode: 0744
        - makedirs: True
        - require:
            - virtualenv: /var/www/payments/api/venv
            - file: /var/www/payments/api/repo/payments/.env

/etc/supervisor/conf.d/payments-api.conf:
    file.managed:
        - source: salt://payments/api/supervisor.conf
        - require:
            - file: /var/www/payments/api/start.sh

/etc/nginx/sites-enabled/payments:
    file.managed:
        - source: salt://payments/api/nginx.conf
        - require:
            - git: payments_api_git_repo
            - virtualenv: /var/www/payments/api/venv
