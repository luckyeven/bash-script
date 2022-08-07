#!/bin/bash
# Using numeric est evaluations
#
value1=10
value2=20
#
if [ $value1 -gt 5 ]
then
    echo "The test value $value1 is greater than 5"
fi
#
if [ $value1 -eq $value2 ]
then
    echo "The valuer are equal"
else
    echo "They are different"
fi
#
