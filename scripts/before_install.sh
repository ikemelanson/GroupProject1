#!/usr/bin/env bash
sudo rm -rf /home/ec2-user/
sudo rm -f /etc/systemd/system/django.service

# clean codedeploy-agent files for a fresh install

# install CodeDeploy agent
sudo yum -y update
sudo yum -y install ruby
sudo yum -y install wget
cd /home/ec2-user
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
sudo chmod +x ./install 
sudo ./install auto

sudo yum -y install pip

# update os & install python3
