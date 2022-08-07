#!/bin/bash
# Look before you leap
#
jump_directory=/home/shifeng
#
if [ -d $jump_directory ]
then
    echo "The $jump_directory directory existe"
    cd $jump_directory
    ls
else
    echo "The $jump_directory directory does not exist"
fi
#
