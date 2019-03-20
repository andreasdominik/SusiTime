#
# actions called by the main callback()
# provide one function for each intent, defined in the Snips Console.
#
# ... and link the function with the intent name as shown in config.jl
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
