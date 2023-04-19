base:
    '*':
        - helloworld

    'db':
        - postgresql
        - payments.db

    'api':
        - python
        - supervisor
        - payments.api
