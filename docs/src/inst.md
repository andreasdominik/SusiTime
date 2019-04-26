# Installation of the SnipsHermesQnD famework

## Julia

This template skill is (like the entire SnipsHermesQnD framework) written in the
modern programming language Julia (because Julia is 50-100 times faster
then Python and coding is much much easier and much more straight forward).
However "Pythonians" often need some time to get familiar with Julia.

If you are ready for the step forward, start here:
[https://julialang.org/](https://julialang.org/)

Installation of Julia is simple:
* just download the tar-ball for
  your architecture (most probably Raspberry-Pi/arm).
* save it in an appropriate folder (`/opt/Julia/` might be a good idea).
* unpack it: `tar -xvzf julia-<version>.tar.gz`
* make sure, that the julia executable is executable. You find it
  as `/opt/Julia/julia-<version>/bin/julia`.
  If it is not executable run `chmod 755 /opt/Julia/julia-<version>/bin/julia`
* Add a symbolic link from a location which is inthe search path, such as
  `/usr/local/bin`:

All together:
  ````sh
  sudo chown $(whoami) /opt    
  mkdir /opt/Julia    
  mv ~/Downloads/julia-<version>.tar.gz .    
  tar -xvzf julia-<version>.tar.gz    
  chmod 755 /opt/Julia/julia-<version>/bin/julia    
  cd /usr/local/bin    
  sudo ln -s /opt/Julia/julia-<version>/bin/julia    
  ````

  **... and you are done!**


  ## SnipsHermesQnD

  The framework SnipsHermesQnD is currently not distributed as an
  individual package, because it is work-in-progress and will change
  continuously.
  In order to be sure, that existing skills/apps are not effected by
  changes of the framework, every skill brings its own version
  of SnipsHermesQnD with it.

  At some point in the future (when the framework is in a released state)
  this might change. But still existing skills will work.
