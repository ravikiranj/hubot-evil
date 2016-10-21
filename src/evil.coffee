# Description:
#   Eval
#
# Dependencies:
#
# Commands:
#   evil command - eval's command
#
# Author:
#   rjanardhana

regexp = /evil\s+(.*)/i

# Listen to regexp and respond
module.exports = (robot) ->
    robot.respond regexp, (msg) ->
        command = msg.match[1]
        try
            msg.send "Command = " + command
            msg.send (eval command).toString()
        catch error
            robot.logger.error "Encountered following exception trying to eval '#{command}', exception = ", error

