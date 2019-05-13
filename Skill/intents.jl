"""
    function registerIntentAction(intent, action; list = SKILL_INTENT_ACTIONS)

Add an intent to the list of intents to be listened.

## Arguments:
- intent: Name of the intend (without developer name)
- action: the function to be linked with the intent
- list: optional keyword arg: List to which the intent should be added.
        default: SKILL_INTENT_ACTIONS
"""
function registerIntentAction(intent, action; list = SKILL_INTENT_ACTIONS)

    push!(list, (intent, actoin))
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
function getIntentActions(;list = SKILL_INTENT_ACTIONS)

    return list
end
