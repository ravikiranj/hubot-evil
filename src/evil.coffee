# Description:
#   Eval
#
# Dependencies:
#   vm
#
# Commands:
#   evil command - eval's command
#
# Author:
#   rjanardhana

regexp = /evil\s+(.*)/i
vm = require("vm")

# Listen to regexp and respond
module.exports = (robot) ->
    robot.respond regexp, (msg) ->
        command = msg.match[1]
        try
            msg.send "Command = " + command + ", Output = " + (vm.runInNewContext(command, {}, {timeout: 1000})).toString()
        catch error
            errorMsg = "Bad syntax or infinite loop detected. Exception = #{error}"
            msg.send errorMsg
            robot.logger.error "Eval Command = #{command}. " + errorMsg

