#
# actions called by the main callback()
# provide one function for each intent, defined in the Snips Console.
#
# ... and link the function with the intent name as shown in config.jl
#
# The functions will be called by the main callback function with
# 2 arguments:
# * MQTT-Topic as String
# * MQTT-Payload (The JSON part) as a nested dictionary, with all keys
#   as Symbols (Julia-style)
#
"""
function powerOn(topic, payload)

    Power on.
"""
function powerOn(topic, payload)

    Snips.publishSay("""Ich schalte den Amazon Fire Stick und den Fernseher ein.""",
                     wait = false, lang = "de_DE")

    amazonWakeUp()
end


"""
function powerOff(topic, payload)

    Power off.
"""
function powerOff(topic, payload)

    amazonSleep()
    switchOFFViera()
end



"""
function startMediacenter(topic, payload)

    Power off.
"""
function startMediacenter(topic, payload)

    amazonWakeUp()

    mediacenter = extractSlotValue(payload, "Mediathek")

    # ARD/ZDF Mediathek:
    if occursin(r"ARD"is, mediacenter)
        Snips.publishSay("Ich öffne das A R D Mediacenter auf Amazon Fire",
                         wait = false, lang = "de_DE")
        amazonMediaCenter("ard")

    elseif occursin(r"ZDF"is, mediacenter)
        Snips.publishSay("Ich öffne das Z D F Mediacenter auf Amazon Fire",
                         wait = false, lang = "de_DE")
        amazonMediaCenter("zdf")
        
    else
        Snips.publishSay("Ich konnte nicht verstehen, welches Mediacenter gemeint war",
                         wait = false, lang = "de_DE")
    end
end
