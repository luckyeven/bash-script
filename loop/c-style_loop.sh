#!/bin/bash
# testing the C-style for loop

for (( i=1, j=1; j <= 9; i++, j++ ))
do
	echo "$i and $j" 
done
