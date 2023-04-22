supervisor:
    pkg:
        - installed
    service.running:
        - require:
            - pkg: supervisor
        - enable: True
        - watch:
            - file: /etc/supervisor/conf.d/*.conf
