postgresql:
    pkg:
        - installed
    service.running:
        - require:
            - pkg: postgresql
        - enable: True
        - watch:
            - file: /etc/postgresql/12/main/postgresql.conf
            - file: /etc/postgresql/12/main/pg_hba.conf

# sets a postgresql.conf file with listen_addresses = '*'
/etc/postgresql/12/main/postgresql.conf:
    file.managed:
        - source: salt://postgresql/postgresql.conf
        - user: postgres
        - group: postgres
        - mode: 644
        - require:
            - pkg: postgresql

# sets a pg_hba.conf file containing:
# host    all             all             0.0.0.0/0               md5
/etc/postgresql/12/main/pg_hba.conf:
    file.managed:
        - source: salt://postgresql/pg_hba.conf
        - user: postgres
        - group: postgres
        - mode: 644
        - require:
            - pkg: postgresql
