#!/bin/bash

_IFS=$IFS
IFS=$'\n'

c=0
d=0

for dic in $(find ~ -type d); do
    ((c++))
done

for file in $(find ~ -type f); do
    ((d++))
done

echo $d
echo $c

IFS=$_IFS
