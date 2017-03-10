#!/bin/bash

# Install all install dependancies for deployment of redis and consul
sudo yum install -y epel-release wget tar
sudo yum groupinstall -y 'Development Tools'
sudo yum update -y
