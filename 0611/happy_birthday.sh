#!/bin/bash

#the question is in Unix site (https://www.unix.com/shell-programming-and-scripting/278776-newbie-need-help.html)
echo "please enter your next birthday!"
echo -n year_yyyy
read year_yyyy
echo -n month_mm
read month_mm
echo -n day_dd
read day_dd

days=0
while [ "$d" != "$year_yyyy-$month_mm-$day_dd" ]; do
    ((i++))
    d=$(date +%F -d "$d 1 day")
done

echo $i "day(s) remaining"

