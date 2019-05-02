#!/bin/bash -xv
#
# control fireTv via adb

COMMANDS=$@
IP=amazon-fire  # set to 192.168.1.200 by dhcp
PORT=5555
ADB=adb
SEND_KEY="$ADB -s $IP:$PORT shell input keyevent"

adb connect amazon-fire

for CMD in $COMMANDS ; do

  case $CMD in
    wake)
      $SEND_KEY KEYCODE_WAKEUP
      ;;
    sleep)
      $SEND_KEY KEYCODE_POWER
      ;;
    play)
      $SEND_KEY KEYCODE_MEDIA_PLAY_PAUSE
      ;;
    pause)
      $SEND_KEY KEYCODE_MEDIA_PLAY_PAUSE
      ;;
  esac
done
