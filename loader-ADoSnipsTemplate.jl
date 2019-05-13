#!/usr/local/bin/julia
#
# main loader skill script.
#
# Normally, it is NOT necessary to change anything in this file,
# unless you know what you are doing!
# The file is adapted by the init script.
#
# A. Dominik, May 2019, © GPL3
#

APP_DIR = dirname(Base.source_path())
include("$APP_DIR/ADoSnipsTemplate/src/ADoSnipsTemplate.jl")
import Main.ADoSnipsTemplate

merge!(INTENT_ACTIONS, ADoSnipsTemplate.getIntentActions())
