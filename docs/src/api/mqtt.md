# MQTT functions

Low-level API to MQTT messages (publish and subscribe).
In the QuickAndDirty framework, these functions are calling
Eclipse `mosquitto_pub` and `mosquitto_sub`. However
this first (and preliminary) implementation is surpriningly
robust and easy to maintain - it seems there is no need to change.

```@docs
subscribeMQTT
readOneMQTT
publishMQTT
```
