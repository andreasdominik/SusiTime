#
# low-level API function goes here, to be called by the
# skill-actions:
#

ADB = "$MODULE_DIR/controlFireTV.sh"

"""
function amazonWakeUp()

    wake up the Amazon fire stick and switch on the Viera TV if necessary
"""
function amazonWakeUp()

    DELAY = 0.7
    success = adbCmds("wake")

    switchONViera()
    sleep(4*DELAY)
    AVViera()
    sleep(DELAY)
    arrowsViera("down")
    sleep(DELAY)
    arrowsViera("down")
    sleep(DELAY)
    arrowsViera("center")


    if !success
        say("""Aus irgendeinem Grund lässt sich der Amazon Fire Stick nicht
            auwecken!""")
    end
    return success
end


function amazonSleep()
    adbCmds("sleep")
end


function amazonMediaCenter(mediacenter)
    adbCmds("$mediacenter")
end

#
# adb internals:
#
function adbCmds(cmds)

    return tryrun(`$ADB $(split(cmds))`, errorMsg =
            "Ich konnte den Befehl $cmds nicht an den Fire Stick senden!")
end
