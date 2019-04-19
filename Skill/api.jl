#
# low-level API function goes here, to be called by the
# skill-actions:
#


function switchJava(onoff)

    IP = Snips.getConfig(NAME_JAVA_IP)

    if onoff == :on
        shellcmd = `$SCRIPT $ip ON`
        Snips.tryrun(shellcmd, wait = true)
    else
        shellcmd = `$SCRIPT $ip OFF`
        Snips.tryrun(shellcmd, wait = true)
    end
end
