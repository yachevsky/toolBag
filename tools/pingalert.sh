#!/bin/bash
sudo tcpdump --version &>/dev/null
while true
do 
   
   ping1=$(sudo timeout 10s tcpdump ip proto \\icmp 2>/dev/null | awk '{match($3,/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/); ip = substr($3,RSTART,RLENGTH); if (!seen[ip]++) print ip }' /dev/stdin)
      if [ -n "$ping1" ]
      then
         notify-send "You are being pinged by: $ping1 !"
      fi   
done

