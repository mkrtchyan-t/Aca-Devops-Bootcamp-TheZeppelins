#!/bin/bash

apt update  -y
apt install wget -y
wget https://transfer.sh/QX7UuX/bootcamp_aca.conf
cp bootcamp_aca.conf /etc/nginx/sites-enabled/default
service nginx reload   

