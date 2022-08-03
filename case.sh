#!/bin/bash
# using the case command
#
case $USER in
shifeng )
    echo "Welcome, $USER."
    echo "Enjoy your visit";;
test )
    echo "Special test account";;
*)
    echo "sorry , you are not allowed here";;
esac
#
