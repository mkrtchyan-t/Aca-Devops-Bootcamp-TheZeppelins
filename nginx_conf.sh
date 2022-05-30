#!/bin/bash

# Updating and installing required commands
apt update  -y
apt install wget -y
apt install curl -y

# initiating variables
URL=https://transfer.sh/QX7UuX/bootcamp_aca.conf
response=$(curl --write-out %{http_code} --silent --output /dev/null $URL)

# Checking if the given URL works and if we already have one
if [[ $response = 200 ]]; then
	wget $URL
fi

# checking if we already have the copy as our nginx default conf
deff=$(diff bootcamp_aca.conf /etc/nginx/sites-enabled/default)

if [[ $deff -ne 0 ]]; then 
       cp bootcamp_aca.conf /etc/nginx/sites-enabled/default
fi

# reloading service
service nginx reload

# removing the conf file
rm -f bootcamp_aca.conf
