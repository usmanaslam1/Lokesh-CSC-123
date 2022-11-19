#!/bin/bash
while read p; do

	result=$(curl -k -i --cookie ./cookie -d "action=post&actionType=submitURL&urlCategorization=$p" https://urlcat.checkpoint.com/urlcat/main.htm 2>/dev/null | grep -A4 "Categories:" | tr -d '\n' |  cut -d '/' -f2)

echo $p,$result
sleep 1
done <sites.txt


I want to add more text:
