using Documenter, SOM

makedocs(modules=[SOM],
         clean = false,
         format = :html,
         #assets = ["assets/favicon.ico"],
         sitename = "ADoSnipsTemplate",
         authors = "Andreas Dominik",
         pages = [
                  "Introduction" => "index.md",
                  "Installation" => "inst.md",
                  "SnipsHermesQnD" => "shqd.md"
                  "Skills" => "makeskill.md"
                                     ],
                   "API" => Any[
                            "Hermes" => "api/hermes.md",
                            "Dialogues" => "api/dialogues.md"
                            "config.ini" => "api/ini.md"
                            "Slots" => "api/slots.md"
                            "MQTT" => "api/mqtt.md",
                            "Utilities" => "api/utils.md"
                               ],
                    "License" => "LICENSE.md"
                  ],
                  # Use clean URLs, unless built as a "local" build
          html_prettyurls = !("local" in ARGS),
          html_canonical = "https://andreasdominik.github.io/ADoSnipsTemplate/stable/",
         )

deploydocs(repo   = "github.com/andreasdominik/ADoSnipsTemplate.git",
           julia  = "1.0",
           osname = "linux",
           target = "build",
           deps = nothing,
           make = nothing)
