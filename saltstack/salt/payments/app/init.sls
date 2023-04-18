/opt/payments/venv:
    virtualenv.managed:
        - requirements: salt://payments/app/requirements.txt
        - require:
            - pkg: python
