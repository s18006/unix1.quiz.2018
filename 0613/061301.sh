#!/bin/bash

#if today is the first day of the vacation...
if [ $(date '+%F') = "2018-09-10" ]; then
	echo "the vacation is from today"
#if today is not vacation day...
elif [ "$td" != "2018-09-10" ]; then
	i=0
	while [ "$d" != "2018-09-10" ]; do
		((i++))
		d=$(date +%F -d "$d 1 day")
	done
	echo $i "day(s) remaining"
fi
