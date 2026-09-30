#!/bin/bash

Start_time=$(date+%s)
sleep 10
End_time=$(date+%s)
total_time=$((End_time-Start_time))
echo "Script executed in $total_time" 