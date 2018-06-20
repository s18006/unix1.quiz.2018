#!/bin/bash

item=""
for i in $(seq 1 100);
  do
  if [ $(($i % 3)) -eq 0 -a $(($i % 5)) -ne 0 -a $(($i % 15)) -ne 0 ]
  then
      item="${item}$(echo "FIZZ,")"
  elif [ $(($i % 5)) -eq 0 -a $(($i % 15)) -ne 0 ]; then
      item="${item}$(echo "BUZZ,")"
  elif [ $(($i % 15)) -eq 0 ]; then
      item="${item}$(echo "FIZZBUZZ,")"
  else
      item="${item}$(echo "$i,")"
  fi
done

echo $item | sed 's/.$//'


