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
                  "Create a new Skill" => "makeskill.md"
                                     ],
                   "API" => Any[
                            "Hermes" => "api/hermes.md",
                            "Low-level MQTT" => "api/mqtt.md",
                            "Dialogie manager" => "api/dialogues.md"
                            "read from config.ini" => "api/ini.md"
                            "work with slots" => "api/dialogues.md"
                            "Utilities" => "api/dialogues.md"
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
