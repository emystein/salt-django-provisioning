payments_db_user:
    postgres_user.present:
        - name: {{ pillar['payments']['dbuser'] }}
        - password: {{ pillar['payments']['dbpassword'] }}
        - runas: postgres
        - require:
            - service: postgresql

payments_db:
    postgres_database.present:
        - name: {{ pillar['payments']['dbname'] }}
        - encoding: UTF8
        - lc_ctype: en_US.UTF8
        - lc_collate: en_US.UTF8
        - template: template0
        - owner: {{ pillar['payments']['dbuser'] }}
        - runas: postgres
        - require:
            - postgres_user: payments_db_user
