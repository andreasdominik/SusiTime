#!/bin/bash
#
# API for REST interface to coffe machine
#
#
IP=$1
CMD=$2

curl http://${IP}/$CMD
exit $?  # return curl exit status
