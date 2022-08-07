#!/bin/bash
# finding files in the PATH

unset IFS
OLDIFS=$IFS
IFS=":"
for folder in $PATH
do
    echo "In $folder"
    for file in $folder/*
    do
        if [ -x $file ]
	then
	    echo "    $file"
	fi
    done
done > findFile.txt
IFS=$OLDIFS
