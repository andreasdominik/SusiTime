
function switchTVChannelAPI(channel)

    for i in reverse(digits(channel))
        vieraSendCommand(i)
        sleep(0.5)
    end
end



function isONViera()

    result = false

    if Snips.tryrun(`$MODULE_DIR/vieraTest.sh`,
            errorMsg = "Ich kann leider nicht testen, ob der Fernseher eingeschaltet ist")
        raw = Snips.tryParseJSONfile("vierastatus.json")

        if haskey(raw, :status) &&  raw[:status] == "ON"
            result = true
        end
    end
    return result
end



function pausePlay()

    vieraSendCommand("pause")
end



function switchOFF()

    if isONViera()
        vieraSendCommand("powerOff")
    end
end



function switchONViera()

    if ! isONViera()

        msg = """Bitte einen Moment Geduld,
                 Ich muss erst noch den Fernseher einschalten!"""
        Snips.publishSay(msg, lang = "de_DE", wait = false)

        Snips.setGPIOtoOFF(NAME_GPIO_KODI)
        sleep(1)
        Snips.setGPIOtoON(NAME_GPIO_KODI)

        # wait until on or timeout:
        #
        timeout = 10  # == 10 sec
        while ! isONViera() && timeout > 0
            sleep(0.1)
            timeout -= 1
        end

        if timeout > 0
            sleep(0.5)
            vieraSendCommand("TV")
            sleep(0.5)
            Snips.setGPIOtoOFF(NAME_GPIO_KODI)
        else
            Snips.publishSay("der Fernseher konnte nicht eingeschaltet werden",
                             wait = false, lang = "de_DE")
        end
    end
end





function TVViera()

    vieraSendCommand("TV")
end



function AVViera()

    vieraSendCommand("AV")
end


"""
    direction is one of "up", "down", "left", "right", "center"
"""
function arrowsViera(direction)

    vieraSendCommand(direction)
end





function vieraSendCommand(cmd; value = 0)

    println("sending command: $cmd and value: $value to Viera TV.")

    return Snips.tryrun(`$MODULE_DIR/viera.sh $(Snips.getConfig(NAME_TV_IP)) $cmd $value`,
                         errorMsg = "$cmd konnte nicht an den Fernseher gesendet werden!")
end
