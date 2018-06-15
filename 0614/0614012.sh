#!/bin/bash


year=$1

if [ $((year % 4)) -eq 0 ]; then
  if [ $((year % 100)) -eq 0 ]; then
    if [ $((year % 400)) -eq 0 ]; then 
        echo "Yes, $year is a leap year"
    else
           echo "No, $year is not a leap year"
    fi

  else
  echo "No, $year is not a leap year"
  fi

else
 echo "No, $year is not a leap year"

fi
