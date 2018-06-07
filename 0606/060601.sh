#!/bin/bash

_IFS=$IFS
IFS=$'\n'

for file in $(find ~ -type f -size 0); do
    echo $file
done

IFS=$_IFS
