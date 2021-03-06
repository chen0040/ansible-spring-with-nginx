#!/usr/bin/env bash

sudo yum update -y
sudo yum upgrade -y
sudo yum groupinstall "Development tools" -y
sudo yum install -y epel-release
sudo yum install -y java-1.8.0-openjdk-devel
sudo yum install -y ansible
sudo yum install -y nginx
sudo systemctl enable nginx.service
sudo systemctl start nginx.service 
sudo cp nginx.conf /etc/nginx 