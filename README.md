# Payment queue provisioning
Example Salt states for provision the infrastructure of a REST API implemented in Python with SQL persistence.

The infrastructure is composed by:

* Salt master machine
* REST API machine (running a Salt minion)
* PostgreSQL machine (running a Salt minion)
 
# Prerequisites
* Python 3.10
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
vagrant destroy
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


