python:
    pkg.installed:
        - names:
            # this is specific to Ubuntu 20.04 LTS
            - python-dev-is-python3
            - python3-setuptools
            - python3-pip

upgrade-pip:
    pip.installed:
        - pkgs:
            - pip
        - upgrade: True
