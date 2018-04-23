#!/bin/bash
#Script developed by Eloy Garcia in April/2018
#
pid_java=$(ps -ef | grep java | grep logstash | awk '{print $2}')
echo $(/usr/bin/jstat -gc $pid_java | tail -1 | awk -v field=$1 '{print $field}')
