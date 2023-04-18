base:
    '*':
        - helloworld

    'db':
        - postgresql
        - payments.db

    'api':
        - python
        - payments.app
