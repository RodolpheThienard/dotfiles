#!/bin/bash

fan_speed=$(cat /sys/devices/platform/dell_smm_hwmon/hwmon/hwmon*/fan1_input)

if [ "$fan_speed" = "0" ]
then 
	output=""
else
	output=" $fan_speed"
fi

echo "$output"
