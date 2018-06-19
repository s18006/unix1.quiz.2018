#!/bin/bash


for i in $(seq 0 10);
do
    if [ $i = 0 ]; then
        class1=$(cat age | sort -n | uniq -c | grep ' [0-9]$'| awk '{print $1}' | awk -F, '{sum += $1} END{print sum}')
        echo $"number of 0-9 ages $class1"
    fi
    if [ $i -ge 1 ]; then
        class2=$(cat age | sort -n | uniq -c | grep ' '$i'[0-9]$'| awk '{print $1}' | awk -F, '{sum += $1} END{print sum}')
        echo $"number of $(((i*10)))-$(((i*10+9))) ages $class2"
    fi
done

all=$(cat age | sort -n | uniq -c | awk -F, '{sum += $1} END{print sum}')
echo $"number of all is $all"

                                                                                                                                       
