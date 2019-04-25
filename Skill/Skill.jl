#
# The main file for the App.
#
# Normally, it is NOT necessary to change anything in this file,
# unless you know what you are doing!
#
module Skill

import Main.SnipsHermesQnD
Snips = SnipsHermesQnD

MODULE_DIR = dirname(Base.source_path())
const APP_DIR = "$MODULE_DIR/.."

Snips.readConfig("$APP_DIR")

include("api.jl")
include("skill-actions.jl")
include("callback.jl")
include("languages.jl")
include("config.jl")


export mainCallback,
       INTENT_ACTIONS, DEVELOPER_NAME

end
