#!/bin/bash

echo "Enter the year (YYYY)"
read year

if date -d "29 feb $year" >/dev/null 2>&1
then
    echo "Yes, $year is a leap year."
else
    echo "No, $year is not a leap year."
fi
