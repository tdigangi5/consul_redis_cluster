# consul_redis_cluster
This document will stand up fully clustered instances of consul and redis on 5 nodes and
meant to mimic a prod like environment as opposed to a local development env.
The nodes all run on CentOS7 and run an initial yum update, meaning the initial setup may
take a while >30 minutes depending on the speed of your internet connection.

##Requirements
* [Install Ansible](http://docs.ansible.com/ansible/intro_installation.html)
* [Install VirtualBox](https://www.virtualbox.org/)
* [Install Vagrant](https://www.vagrantup.com/docs/installation/)
* Open connection to the internet(Not proxy configured)
* Mac OS X (Not tested in windows)

## Installation
* `cd /path/to/consul_redis_cluster`
* `vagrant up`

## Setup Overview
### Redis
* Setup on 5 VMs
  * 1 Master
  * 2 Slaves
  * 2 Sentinel Servers

### Consul
  * Setup across 5 VMs in docker containers
    * 1 Server primary
    * 1 Server secondary
    * 3 clients

#### Notes
Validated software versions
* Mac OS X
* Ansible 2.2.0.0 -> 2.2.1.0
* Vagrant 1.8.7 -> 1.9.1
* VirtualBox 5.0.6 -> 5.1.14
