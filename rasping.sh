#!/bin/bash
ip=192.168.25.80
file=~/rasping/rasping_$ip.log

zeitpunkt=$(date);
ping $ip -c 1 -w 3 >/dev/null
if [ $? -eq 0 ]; then
  echo "$zeitpunkt: $ip is up" >> $file
else
  echo "$zeitpunkt: $ip is down" >> $file
fi
