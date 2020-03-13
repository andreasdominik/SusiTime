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
function timeAction(topic, payload)

    # log:
    Snips.printLog("action templateAction() started.")
    timeStr = Snips.readableDateTime(Dates.now(), onlyTime=true)

    Snips.publishEndSession("$(Snips.langText(:isay)) $timeStr")
    return true
end
