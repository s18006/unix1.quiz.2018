#!/bin/bash

current_date=$(date '+%Y')-$(date '+%m' | sed 's/^0//g')-$(date '+%d' | sed 's/^0//g')
echo $((($(date +%s --date "$current_date")-$(date +%s --date "2018-5-8"))/(3600*24))) days
