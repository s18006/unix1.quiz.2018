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

echo "ファイルの数は $d　個です。"
echo "ディレクトリの数は $c　個です。"


IFS=$_IFS
