#!/bin/sh

export HUBOT_HIPCHAT_JID="166093_1205621@chat.hipchat.com"
export HUBOT_HIPCHAT_PASSWORD="11aaAAaa"
export HUBOT_HIPCHAT_ROOMS="166093_hubros_house@conf.hipchat.com,166093_hubro_test@conf.hipchat.com"
export HUBOT_HIPCHAT_JOIN_ROOMS_ON_INVITE=false
export HUBOT_ENV="docker"

nohup redis-server /etc/redis/redis.conf > /var/log/redis.log 2>&1 &
cd /root/hubro && ./bin/start_hubro.sh
