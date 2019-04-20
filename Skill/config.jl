# set CONTINUE_WO_HOTWORD to true to be able to chain
# commands without need of a hotword in between:
#
CONTINUE_WO_HOTWORD = true

DEVELOPER_NAME = "andreasdominik"

# Properies of the current session:
#

# Bash-script to control coffee machine
# run like:
#   $ controlJava.sh 192.168.1.65 ON
#
SCRIPT = "controlJava.sh"

# Java flavours:
#
JAVA = Dict{String, Int64}()
JAVA["Espresso"] = 1
JAVA["Latte"] = 2


# Slots:
# Name of slots to be extracted from intents:
#
SLOT_JAVA_TYPE = "Coffee_Type"

# Parameter names in config.ini:
#
NAME_JAVA_IP = "IP_address_of_CoffeeMachine"


# link between actions and intents:
# intent is linked to action{Funktion}
# the action is only matched, if
#   * intentname matches and
#   * if the siteId matches, if site is  defined in config.ini
#     (such as: "switch TV in room abc").
#
INTENT_ACTIONS = Dict{String, Function}()
INTENT_ACTIONS["PowerOnCoffee"] = powerOn
INTENT_ACTIONS["PowerOffCoffee"] = powerOff
# INTENT_ACTIONS["BrewCoffee"] = brewCoffee
