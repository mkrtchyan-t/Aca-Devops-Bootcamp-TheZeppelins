#!/bin/bash

apt update -y

sudo apt install nginx -y

ufw app list

ufw allow 'Nginx Full'

systemctl start nginx

