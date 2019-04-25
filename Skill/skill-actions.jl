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
function templateAction(topic, payload)

    Dummyaction for the template.
"""
function templateAction(topic, payload)

    println("- ADoSnipsOnOff: action templateAction() started.")
    # find the device in payload:
    #
    name = Snips.getConfig(INI_MY_NAME)

    # say who you are:
    #
    Snips.publishSay(TEXTS[:bravo], lang = LANG)
    Snips.publishEndSession("$(TEXTS[:iam]) $name")
    return true
end
