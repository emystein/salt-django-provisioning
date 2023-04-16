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
The Vagrantfiles alredy exist in this project. I put the commands used for creating the Vagrantfiles here for reference:

On each vm directory (api, db, salt-master), run:

```bash
vagrant init ubuntu/focal64
vagrant up
```

## Cleanup
When finished working on this project, on each vm directory (api, db, salt-master), run:

```bash
vagrant destroy
```

