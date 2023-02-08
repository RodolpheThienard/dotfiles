#!/bin/bash

temp_path=$(cat /sys/devices/platform/dell_smm_hwmon/hwmon/hwmon*/temp1_input)
temp_cpu=$((temp_path / 1000))
##F0C674
if [[ "$temp_cpu" -ge "20" ]]
then
	echo "$temp_cpu°c"
else
	echo "$temp_cpu°c"
fi
#echo "$output"
