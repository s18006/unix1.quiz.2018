#!/bin/bash


for day in $(cat gantan)
do
   echo $(date -d $day '+%u %a') >> gantancounter 
done

cat gantancounter | sort -nr | uniq -c | sort -k2 
sudo rm -r gantancounter 
