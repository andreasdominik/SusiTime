"""
    function registerIntentAction(intent, devName, action)

Add an intent to the list of intents to be listened.

## Arguments:
- intent: Name of the intend (without developer name)
- devName: Name of skill developer
- action: the function to be linked with the intent
"""
function registerIntentAction(intent, devName, action)

    global SKILL_INTENT_ACTIONS
    push!(SKILL_INTENT_ACTIONS, (intent, devName, action))
end


"""
    function get IntentActions()

Return the list of all intent-function mappings for this app.
The function is exported to deliver the mappings
to the Main context.

# Arguments:
- list: optional keyword arg: List which should be delivered.
        default: SKILL_INTENT_ACTIONS
"""
function getIntentActions()

    global SKILL_INTENT_ACTIONS
    return SKILL_INTENT_ACTIONS
end
