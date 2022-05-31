#!/bin/bash

# finding root_path from bootcamp_aca.conf

root_path=$(cat /etc/nginx/sites-enabled/bootcamp_aca.conf | grep root| tr ';' '/' | awk '{print $2}'  )

# finding name of creating file

index=$(cat /etc/nginx/sites-enabled/bootcamp_aca.conf | grep index | tr ';' ' ' | awk '{print $2}' )

# creating new file

if [[ ! -d $root_path ]]
then
	mkdir $root_path
fi

echo "Barev World" > ${root_path}${index}

# checking bootcamp_aca.conf file

if [[ $(curl -s -I http://localhost | grep HTTP | cut -d " " -f 2) -eq 200 ]] ; then
	echo "every thing is OK"
fi
