#!/bin/sh

sleep 1
echo "Killing node..." >> /var/log/hubro.log 2>&1
killall node
echo "Sleeping for 3 minutes..." >> /var/log/hubro.log 2>&1
sleep 179
echo "Resurrecting Hubro..." >> /var/log/hubro.log 2>&1
nohup /etc/my_init.d/start_hubro.sh >> /var/log/hubro.log 2>&1 &