#!/bin/bash
#
# Check bigcouch service locally. This script needs to be copied into /etc/zabbix/scripts/
# Created by Eloy Garcia on March/2018

value=$(curl -s "http://127.0.0.1:5984")
if [[ "$value" =~ Welcome ]]; then
  echo '1'
else
  echo '0'
fi
