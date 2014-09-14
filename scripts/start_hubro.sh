#!/bin/sh

export HUBOT_HIPCHAT_JID="166093_1205621@chat.hipchat.com"
export HUBOT_HIPCHAT_PASSWORD="11aaAAaa"
export HUBOT_HIPCHAT_ROOMS="166093_hubros_house@conf.hipchat.com"
export HUBOT_HIPCHAT_ROOMS_BLACKLIST="166093_brobotics@conf.hipchat.com,166093_brobotics_forever@conf.hipchat.com"
export HUBOT_HIPCHAT_JOIN_ROOMS_ON_INVITE=false

nohup redis-server /etc/redis/redis.conf > /var/log/redis.log &
cd /root/hubro && ./bin/start_hubro.sh
