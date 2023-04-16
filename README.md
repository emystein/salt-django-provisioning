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


