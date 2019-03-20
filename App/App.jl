#
# The main file for the App.
#
# Normally, it is NOT necessary to change anything in this file,
# unless you know what you are doing!
#
module App

import SnipsHermesQnD
Snips = SnipsHermesQnD

MODULE_DIR = dirname(Base.source_path())

include("$MODULE_DIR/api.jl")
include("$MODULE_DIR/skill-actions.jl")
include("$MODULE_DIR/callback.jl")
include("$MODULE_DIR/config.jl")




export mainCallback,
       INTENT_ACTIONS, DEVELOPER_NAME

end
