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
