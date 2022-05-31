#!/bin/bash

# installing and running nginx
./nginx_install.sh &&

# downloading and setting configuartions for nginx
./nginx_conf.sh &&

# setting up the index.html file
./setting_conf.sh &&

# displaying memeory, sidk and CPU usages
./print_stat.sh &
