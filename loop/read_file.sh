#!/bin/bash
# Reading values from a file

file="provinces"
count=1

<<<<<<< HEAD
IFSOLD=$IFS
=======
IFS.OLD=$IFS
>>>>>>> main
IFS=$'\n'

for province in $(cat $file)
do
    echo "Beautiful province: $count. $province"
    ((count++))
done

<<<<<<< HEAD
IFS=$IFSOLD
=======
IFS=$IFS.OLD
>>>>>>> main
