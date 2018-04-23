#!/bin/bash
#Script developed by Eloy Garcia in March/2018
#

/usr/bin/curl -s https://adm03.iptel.co/nginx_status | grep "Active connections:" | cut -d " " -f3
