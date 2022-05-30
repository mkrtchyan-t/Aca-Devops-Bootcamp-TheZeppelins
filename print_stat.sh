#!/bin/sh

# we are using while loop to recompile the code for every 10 seconds
while true
do

# initiating memory usage
mem="$(free -m | tr -s " " | cut -d " " -f 3,2 | tr " " "/" | head -2 | tail -1)MB"

# initiating disk usage
disk=$(df -h | head -4 | tail -1 | tr -s " " | cut -d " " -f 5)

# initiating cpu usage
cpu=$(top -bn1 | grep load | tr -s " " | cut -d " " -f 12)

# redirecting statistics to our index.html file
echo "Memory Usage: $mem \n Disk Usage: $disk \n CPU Usage: $cpu %" > /var/www/bootcamp_aca/index.html

# setting "code restart" time to 10 seconds
sleep 10
done
