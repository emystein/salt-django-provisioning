base:
    '*':
        - helloworld

    'db':
        - postgresql
        - payments.db

    'api':
        - python
        - supervisor
        - nginx
        - payments.api
