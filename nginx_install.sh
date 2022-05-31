#!/bin/bash

# updating apt
apt update -y
#checking apt version
apt -v
#installing nginx
sudo apt install nginx -y
#checking nginx version
nginx -v
#using uncomplicated firewall utility to configure brandmauer 
ufw allow 'Nginx HTTP'
#checking the changes
ufw status
#checking how webserver services work
systemctl start nginx

