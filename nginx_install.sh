#!/bin/bash

# updating, installing and starting nginx and required libraries
apt update -y
sudo apt install nginx -y
ufw allow 'Nginx Full'
systemctl start nginx

