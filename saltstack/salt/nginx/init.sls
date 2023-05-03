nginx:
    pkg:
        - installed
    service.running:
        - require:
            - pkg: nginx
        - enable: True
        - watch:
            - file: /etc/nginx/sites-enabled/*
