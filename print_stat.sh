#!/bin/sh

mem="$(free -m | tr -s " " | cut -d " " -f 3,2 | tr " " "/" | head -2 | tail -1)MB"
 
disk=$(df -h | head -4 | tail -1 | tr -s " " | cut -d " " -f 5)

cpu=$(top -bn1 | grep load | tr -s " " | cut -d " " -f 12)

echo "Memory Usage: $mem \n Disk Usage: $disk \n CPU Load: $cpu" > /var/www/bootcamp_aca/index.html
