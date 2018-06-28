#!/bin/bash

cat personal_information.csv | tr , " " | awk '{print $7}' | sort | uniq -c |sort -rn | head -5

