#!/bin/sh

export HUBOT_HIPCHAT_JID="166093_1205621@chat.hipchat.com"
export HUBOT_HIPCHAT_PASSWORD="11aaAAaa"
export HUBOT_HIPCHAT_ROOMS="166093_hubros_house"
export HUBOT_HIPCHAT_ROOMS_BLACKLIST="166093_brobotics,166093_brobotics_forever"
export HUBOT_HIPCHAT_JOIN_ROOMS_ON_INVITE="false"g

bin/hubot --adapter hipchat