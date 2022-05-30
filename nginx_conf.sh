#!/bin/bash

# installing required commands
apt install wget -y
apt install curl -y

# initiating variables
url='https://transfer.sh/QX7UuX/bootcamp_aca.conf'
response=$(curl --write-out %{http_code} --silent --output /dev/null $url)
file="bootcamp_aca.conf"
# Checking if the given URL works and if we already have one
if [[ $response = 200 ]]; then
	wget $url
fi

# chechking if file is zero or not 
if [[ -z $file ]]; then 
       mv bootcamp_aca.conf /etc/nginx/sites-enabled/
fi

#remove /etc/nginx/sites-enabled/default file

if [[ -f /etc/nginx/sites-enable/default ]]
then
rm /etc/nginx/sites-enabled/default

fi

#testing nginx
nginx -t

# reloading service
service nginx reload

