#!/bin/bash
filename=$(date +"%F_%R")
mkdir -p ~/test && { echo "catalog test was created succesfully" >> ~/report; cd ~/test; touch $filename; }; ping -c 1 -w 2 "192.168.1.79" | grep -q rtt || echo "ping error" >> ~/report
