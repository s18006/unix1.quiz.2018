#!/bin/bash

for i in $(seq 1 11);
do
    class=$(cat age | sort -n | uniq -c | head -n $((i*10)) | tail -10 | awk -F, '{sum += $1} END{print sum}')
    echo $"number of $(((i*10)-10))-$(((i*10-1))) ages $class"
done

all=$(cat age | sort -n | uniq -c | awk -F, '{sum += $1} END{print sum}')
echo $"number of all is $all"
