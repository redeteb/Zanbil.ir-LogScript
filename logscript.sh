#!/bin/bash


#Create a BASH script that will search the log file for 404 errors and identify the IP addresses associated with them

grep " 404 " web-server-access-logs.log | awk '{ print $1 }' | cut -d'"' -f2 > 404file.txt

# Count occurrences of each IP
echo "IP Address      Count"
awk '{count[$1]++} END {for (ip in count) print ip, "   ", count[ip]}' 404file.txt | sort -k2 -nr
