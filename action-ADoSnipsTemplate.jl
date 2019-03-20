#!/usr/local/bin/julia
#
# main executable skill script.
#
# Normally, it is NOT necessary to change anything in this file,
# unless you know what you are doing!
#

APP_DIR = dirname(Base.source_path())

using Pkg
Pkg.activate(APP_DIR)

import JSON
import SnipsHermesQnD
Snips = SnipsHermesQnD

include("$APP_DIR/App/App.jl")
import Main.Viera





function main()

    Snips.readConfig("$APP_DIR")

    intents = App.DEVELOPER_NAME * ":" .* keys(App.INTENT_ACTIONS)
    Snips.subscribe2Intents(intents, App.mainCallback)

end



main()
