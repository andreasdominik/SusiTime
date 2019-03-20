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
function powerOnMyDevice(topic, payload)

    Power on.
"""
function powerOnMyDevice(topic, payload)

    Snips.publishSay("""OK. Let me see, if I can power on the coffee machine""",
                     wait = false, lang = "en_GB")

    switchON()
end
