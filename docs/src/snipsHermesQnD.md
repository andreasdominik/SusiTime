# The SnipsHermesQnD framework

## Julia

This template skill is (like the entire SnipsHermesQnD framework) written in the
modern programming language Julia (because Julia is faster
then Python and coding is much much easier and much more straight forward).
However "Pythonians" often need some time to get familiar with Julia.

If you are ready for the step forward, start here:
[https://julialang.org/](https://julialang.org/)

### Installation of Julia language

Installation of Julia is simple:
* just download the tar-ball for
  your architecture (most probably Raspberry-Pi/arm).
* save it in an appropriate folder (`/opt/Julia/` might be a good idea).
* unpack it: `tar -xvzf julia-<version>.tar.gz`
* make sure, that the julia executable is executable. You find it
  as `/opt/Julia/julia-<version>/bin/julia`.
  If it is not executable run `chmod 755 /opt/Julia/julia-<version>/bin/julia`
* Add a symbolic link from a location which is in the search path, such as
  `/usr/local/bin`:

All together:

```sh
sudo chown $(whoami) /opt    
mkdir /opt/Julia    
mv ~/Downloads/julia-<version>.tar.gz .    
tar -xvzf julia-<version>.tar.gz    
chmod 755 /opt/Julia/julia-<version>/bin/julia    
cd /usr/local/bin    
sudo ln -s /opt/Julia/julia-<version>/bin/julia    
```

  **... and you are done!**

  For a very quick *get into,* see
  [learn X in Y minutes](http://learnxinyminutes.com/docs/julia/).

### IDEs

Softwarte development is made comfortable by
IDEs (Integrated development environment). For Julia, best choices
include:

* My favourite is the [Atom editor](http://atom.io/) with the
  [Juno package](http://junolab.org) installed.
* [Visual Studio Code](https://code.visualstudio.com) also
  provides very good support for Julia.
* Playing around and learning is best done with
  [Jupyter notebooks](http://jupyter.org). The Jupyter stack can be installed
  easily from the Julia REPL by adding the Package `IJulia`.

### Noteworthy differences between Julia and Python

Julia code looks very much like Python code, except of
* there are no colons,
* whitespaces have no meaning; blocks end with `end`,
* sometimes types should be given explicitly.

However Julia a typed language with all advantages; and code is
run-time-compiled only once, with consequences:
* If a function is called the first time, there is a time lack, because
  the compiler must finish his work before the actual code is executed.
* Future function calls will use the compiled program, making Julia
  code execute as fast as compiled C-code!

## SnipsHermesQnD

The framework SnipsHermesQnD is currently not distributed as an
individual package, because it is work-in-progress and will change
continuously.
In order to be sure, that existing skills/apps are not effected by
changes of the framework, every skill brings its own version
of SnipsHermesQnD with it.

At some point in the future (when the framework is in a released state)
this might change. But still existing skills will work.


### Installation of the framework

The framework needs not to be onstalled, because it is distributed
with each skill (see above).
However `Eclipse modquitto` must be installed. On a Raspberry Pi the packages
`mosquitto` and `mosquitto-clients` are needed:

```sh
sudo apt-get install mosquitto
sudo apt-get install mosquitto-clients
```



## SnipsHermesQnD details

### Strategy


### Common intent for on/off


### Continue conversation without hotword


### Multi-language support
