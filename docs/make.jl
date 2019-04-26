using Documenter

# tell Documenter, where so look for source files:
#
push!(LOAD_PATH,"SnipsHermesQnd/src/")

makedocs(#modules=[SOM],
         clean = false,
         format = Documenter.HTML(),
         #assets = ["assets/favicon.ico"],
         sitename = "ADoSnipsTemplate",
         authors = "Andreas Dominik",
         pages = [
                  "Introduction" => "index.md",
                  "Installation" => "inst.md",
                  "Skills" => "makeskill.md",
                   "API" => Any[
                            "Hermes" => "api/hermes.md",
                            "Dialogues" => "api/dialogues.md",
                            "config.ini" => "api/ini.md",
                            "Slots" => "api/slots.md",
                            "MQTT" => "api/mqtt.md",
                            "Utilities" => "api/utils.md"
                               ],
                    "License" => "LICENSE.md"
                  ],
                  # Use clean URLs, unless built as a "local" build
          format = Documenter.HTML(prettyurls = !("local" in ARGS)),
          format = Documenter.HTML(canonical = "https://andreasdominik.github.io/ADoSnipsTemplate/dev/"),
         )

deploydocs(repo   = "github.com/andreasdominik/ADoSnipsTemplate.git",
           target = "build",
           branch = "gh-pages",
           deps = nothing,
           make = nothing)
