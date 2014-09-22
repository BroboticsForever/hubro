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
jesus = 0

module.exports = (robot) ->
  robot.respond /jesus/i, (msg) ->
    if jesus isnt 1
      jesus++
    msg.send "(ohcrap)"

  robot.respond /crucify him/i, (msg) ->
    if jesus is 1
      msg.send "It is done. On the third minute I shall resurrect in glory."
      s = sp "#{__dirname}/../bin/jesus.sh"
    else
      msg.send "Crucify who?"
