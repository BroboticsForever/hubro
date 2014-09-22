#!/bin/sh

if [ ${HUBRO_ENV} == "docker" ]; then
    export START_HUBRO=/etc/my_init.d/start_hubro.sh
else
    export START_HUBRO=$HOME/Development/git/hubro/hubro/bin/start_local_hubro.sh
fi

sleep 1
echo "Killing node..." >> /var/log/hubro.log 2>&1
killall node
echo "Sleeping for 3 minutes..." >> /var/log/hubro.log 2>&1
sleep 179
echo "Resurrecting Hubro..." >> /var/log/hubro.log 2>&1
nohup ${START_HUBRO} >> /var/log/hubro.log 2>&1 &