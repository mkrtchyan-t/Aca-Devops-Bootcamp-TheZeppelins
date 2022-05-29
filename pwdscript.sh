#!/bin/bash

# finding root_path from bootcamp_aca.conf

root_path=$(cat /etc/nginx/sites-enabled/default | grep root| tr ';' '/' | awk '{print $2}'  )

# finding name of creating file

index=$(cat /etc/nginx/sites-enabled/default | grep index | tr ';' ' ' | awk '{print $2}' )

# creating new file

echo "Barev World" > ${root_path}${index}
