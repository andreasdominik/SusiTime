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

    # log:
    Snips.printLog("action templateAction() started.")

    # get my name from susi.toml:
    #
    config = Snips.getSusiToml()
    Snips.printDebug("""Intent:  $(Snips.getIntent()) $config""")

    if haskey(config, "assistant") && haskey(config["assistant"], "name") &&
       !isempty(config["assistant"]["name"])
        myname = config["assistant"]["name"]
    else
        myName == nothing
        Snips.publishEndSession(:noname)
        return false
    end

    # get the word to repeat from slot:
    #
    word = Snips.extractSlotValue(payload, SLOT_WORD)
    if word == nothing
        Snips.publishEndSession(:dunno)
        return true
    end

    # say who you are:
    #
    Snips.printDebug("Name is: $myname , Wort is: $word")
    Snips.publishSay(:bravo)
    Snips.publishSay("$(Snips.langText(:iam)) $myname")
    Snips.publishEndSession("$(Snips.langText(:isay)) $word")
    return true
end
