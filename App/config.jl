DEVELOPER_NAME = "andreasdominik"

# Properies of the current session:
#

# Java flvours:
#
JAVA = Dict{String, Int64}()
JAVA["Espresso"] = 1
JAVA["Latte"] = 2


# Slots:
# Name of slots to be extracted from intents:
#
SLOT_NAME_TV_CHANNEL = "Coffee_Type"

# Parameter names in config.ini:
#
NAME_GPIO_KODI = "kodiGPIO"
NAME_TV_IP = "IP_address_of_TV"


# link between actions and intents:
# intent is linked to action{Funktion}
# the action is only matched, if
#   * intentname matches and
#   * if the siteId matches, if site is  defined in config.ini
#     (such as: "switch TV in room abc").
#
INTENT_ACTIONS = Dict{String, Function}()
INTENT_ACTIONS["PoweronPavoni"] = powerOnMyDevice
INTENT_ACTIONS["PoweroffPavoni"] = powerOffMyDevice
INTENT_ACTIONS["MakeEspresso"] = brew
