#!/bin/bash
# list all file and typs in current directory

for file in ./*
do
    if [ -d "$file" ]
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
	echo "$file is a file"
    else
	echo "Unkonw type"
    fi
done

