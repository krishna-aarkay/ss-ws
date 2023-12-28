#!/bin/bash
n=$1
if [ $n -gt 100 ]
then
    echo "Yes, given munber "$n" is greater than 100"
else if [ $n -e 100 ]
    echo "No, given numbr "$n" is equal to 100 "
else
    echo "given number id leass than 100"
fi
