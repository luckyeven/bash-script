#!/bin/bash
# This script checks if either a directory or file exists
#
location=$HOME
file_name="Downloads"
#
if [ -e $location ]
then #Directory does exist
    echo "OK on the $location directory."
    echo "Now, checking the file, $file_name..."
    # 
    if [ -e $location/$file_name ]
    then
	echo "OK, file exist"
    else
	echo "$file_name , does not exist"
    fi
#
else
    echo "The $location directory does not exist."
    echo "Can not check file at this time."
fi
#
 
