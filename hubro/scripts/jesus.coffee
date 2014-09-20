# Description:
#   And so it was, he had indeed risen after three days... or minutes
#
# Commands:
#   [LOCKED] - [LOCKED]
#
# Notes:
#   It is done.

spawn = require 'child_process'
sp = spawn.spawn
module.exports = (robot) ->
  robot.respond /jesus/i, (msg) ->
    msg.send "(ohcrap)"

  robot.respond /crucify him/i, (msg) ->
    s = sp '/root/hubro/bin/jesus.sh'