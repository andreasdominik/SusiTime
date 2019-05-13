#
# The main file for the App.
#
# Normally, it is NOT necessary to change anything in this file,
# unless you know what you are doing!
#
module ADoSnipsTemplate

MODULE_DIR = dirname(Base.source_path())
const APP_DIR = "$MODULE_DIR/.."

include("$APP_DIR/SnipsHermesQnD/src/SnipsHermesQnD.jl")
import Main.SnipsHermesQnD
Snips = SnipsHermesQnD


Snips.readConfig("$APP_DIR")
Snips.setLanguage(Snips.getConfig(:language))

# List of intents to listen to:
#
SKILL_INTENT_ACTIONS = Tuple{AbstractString,Function}[]

include("api.jl")
include("skill-actions.jl")
include("intents.jl")
include("languages.jl")
include("config.jl")

# only exported function:
#
function getIntentActions()
    return SKILL_INTENT_ACTIONS
end

export getIntentActions

end
