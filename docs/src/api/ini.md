# config.ini functions

Helper functions for read values from the file `config.ini`.

`config.ini` files follow the normal rules as for all Snips apps, with 
one extension:

- no spaces around the `=`
- if value of the parameter (right side) includes commas,
  the value can be interpreted as a comma-separated list of values.
  In this case, the reader-function will return an array of Strings
  with the values (which an be accessed by their index).


```@docs
readConfig
matchConfig
getConfig
isinConfig
getAllConfig
```
