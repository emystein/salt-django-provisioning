# Payment queue provisioning
Example Salt states for provisioning the infrastructure of a REST API implemented in Python with SQL persistence.

# Infrastructure

## DB
The DB used is PostgreSQL and runs in a single machine.

## REST API
The API runs on a single machine.

The API uses the database from the DB machine.

The API is configured as a WSGI application and executed by gunicorn.

The gunicorn instance is watched by the supervisor service.

Nginx runs as a reverse proxy of gunicorn.

## Salt
Salt runs on:

* A Salt master machine
* The REST API machine (running a Salt minion)
* The DB machine (running a Salt minion)


# Prerequisites
* Python 
* Ruby
* VirtualBox
* Vagrant

# Initial VM Setup
The Vagrantfile already exist in this project. In order to create the VMs execute:

```bash
vagrant up
```

## Cleanup
When finished working on this project, execute:

```bash
vagrant destroy -f
```



# Salt

## Configuration

### Master
```file_roots``` is set to directory ```saltstack/salt``` and ```pillar_roots``` to ```saltstack/pillar```, both settings defined in ```saltstack/etc/master```

## Operation
Log into Salt master:
```bash
vagrant ssh master
```

Change to root user:
```bash
sudo su
```

Accept the keys of Salt minions:
```bash
salt-key -A
```

Apply the state to all minions:
```bash
salt '*' state.apply
```


