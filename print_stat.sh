#!/bin/sh

# we are using while loop to recompile the code
while true
do

# initiating memory usage(MB)
memtotal=$(cat /proc/meminfo | grep -i memtotal | tr -s " " | cut -d " " -f 2 | awk '{printf $1/1024}')
memfree=$(cat /proc/meminfo | grep -i memfree | tr -s " " | cut -d " " -f 2 | awk '{printf $1/1024}')

# initiating disk usage
disk=$(df -h / | tail -1 | tr -s " " | cut -d " " -f 5)

# initiating cpu usage
cpu=$(top -bn1 | grep -i "cpu(s)" | tr -s " " | cut -d " " -f 8 | awk '{printf 100-$1}')

# redirecting statistics to our index.html file
echo "Memory Usage: ${memfree}/${memtotal}MB <br>
      Disk Usage: $disk <br>
      CPU Usage: $cpu % <br>"	> /var/www/bootcamp_aca/index.html

# setting "code restart" time to 10 seconds
sleep 10
done
