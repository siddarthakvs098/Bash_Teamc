#!/bin/bash

 

# Get the current date and time

current_date=$(date +"%A, %B %d, %Y")

current_time=$(date +"%H:%M:%S")

 

# Get system load average

load_average=$(uptime | awk -F'load average: ' '{print $2}' | awk '{print $1}')

 

# Get OS information

os_info=$(lsb_release -a 2>/dev/null || cat /etc/os-release 2>/dev/null)

 

# Display date and time

echo "Current date: $current_date"

echo "Current time: $current_time"

echo "--------------------------"

 

# Display system load average

echo "System load average (1 min): $load_average"

echo "--------------------------"

 

# Display OS information

echo "Operating System Information:"

echo "$os_info"

 

# Conditional statement to check the load average

if (( $(echo "$load_average > 2.0" | bc -l) )); then

    echo "Load average is high. Consider investigating."

elif (( $(echo "$load_average > 1.0" | bc -l) )); then

    echo "Load average is moderate."

else

    echo "Load average is low."

fi
