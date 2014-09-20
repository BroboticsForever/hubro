#!/bin/sh

export HUBRO_HOME=/home/thetaiter/Development/git/hubro

echo "Killing node..." >> /home/thetaiter/Development/logs/hubro.log 2>&1
killall node
echo "Sleeping for 3 minutes..." >> /home/thetaiter/Development/logs/hubro.log 2>&1
sleep 180
echo "Resurrecting Hubro..." >> /home/thetaiter/Development/logs/hubro.log 2>&1
nohup ${HUBRO_HOME}/hubro/bin/start_local_hubro.sh >> /home/thetaiter/Development/logs/hubro.log 2>&1 &