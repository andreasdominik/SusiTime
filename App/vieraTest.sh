#!/bin/bash
#
# test, if viera is on
#
TV_IP="192.168.42.151"
TV_PORT="55000"
JSON="vierastatus.json"

ping -c 1 $TV_IP
SUCCESS=$?

if [[ $SUCCESS -eq 0 ]] ; then
  STATUS="ON"
else
  STATUS="OFF"
fi

echo "{"                               > $JSON
echo "  \"status\" : \"${STATUS}\""   >> $JSON
echo "}"                              >> $JSON
