#
# low-level API function goes here, to be called by the
# skill-actions:
#

function switchOFF()

    if isON()
        pavoniSendCommand("powerOff")
    end
end



function switchON()

    if ! isON()
        #     some code to test, if the device is already switched on ...
    end
end






function pavoniSendCommand(cmd; value = 0)

    println("sending command: $cmd and value: $value to the coffe machine.")

    return Snips.tryrun(`a command to send something to the device`,
                         errorMsg = "unable to execute the command: $cmd")
end
