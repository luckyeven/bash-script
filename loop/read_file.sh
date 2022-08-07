#!/bin/bash
# Reading values from a file

file="provinces"
count=1

IFSOLD=$IFS
IFS=$'\n'

for province in $(cat $file)
do
    echo "Beautiful province: $count. $province"
    ((count++))
done

IFS=$IFSOLD
