#!/bin/bash

read -p "Enter your birth year[yyyy]: " year
read -p "Enter your birht month[mm] " month

year_now=$(date '+%Y')
month_now=$(date '+%m')

age_year=$(($year_now-$year))
age_month=$(($month_now-$month))

if [ $age_month -lt 0 ] ; then
   age_month=$(($month_now-$month+12))
   age_year=$(($age_year-1))
else
   age_month=$(($month_now-$month))
fi
echo "You are $age_year years and $age_month months old!"
