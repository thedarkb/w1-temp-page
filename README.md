# Temperature Monitoring System

This script detects all of the sensors on a one wire bus, scrapes the temperature readings from them, and outputs a basic webpage to the standard output which displays the address, the label (if defined), and the temperature reading in a table.

To assign labels to different sensors, you must create a file labelled "names.cfg" in the same directory as the script. The entries must conform to the following format: 

```
28-01142f53bc87 Server1
28-01142f5d4817 Server2
28-01142f65855b AirConditioner
```
Sensor labels must not exceed one word and should be separated from the address by a space.
