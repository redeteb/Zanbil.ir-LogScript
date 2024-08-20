#!/bin/bash/


#Create a BASH script that will search the log file for 404 errors and identify the IP addresses associated with them


grep " 404 " ./web-server-access-logs.log | awk '{print $1 "    "  $9}' > 404file.txt
