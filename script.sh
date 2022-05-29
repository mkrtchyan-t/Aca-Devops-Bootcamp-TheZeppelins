#!/bin/bash

apt update  -y
apt install wget -y
if [[ ! -f bootcamp_aca.conf ]]; then
	wget https://transfer.sh/QX7UuX/bootcamp_aca.conf
fi

Deff=$(diff bootcamp_aca.conf /etc/nginx/sites-enabled/default)

if [[ $Deff -ne 0 ]]; then 
       cp bootcamp_aca.conf /etc/nginx/sites-enabled/default
fi
service nginx reload   
rm -f bootcamp_aca.conf
