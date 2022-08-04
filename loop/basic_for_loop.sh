#!/bin/bash
# Basic for command
#
count=1

for test in "British Columbia" Alberta Saskatchewan Manitoba Ontario Quebec "New Brunswick" "Nova Scotia" "Prince Edward Island" "Newfoundland and Labrador" Yunkon "Northwest Territories" "Nunavut"
do
    echo "Canadian Provinces: $count $test."
    ((count++))
done
#
