supervisor:
    pkg:
        - installed
    service.running:
        - require:
            - pkg: supervisor
        - enable: True
