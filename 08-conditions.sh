#!/bin/bash
n=$1
if [ $n -gt 100 ]
then
    echo "Yes, given munber "$n" is greater than 100"
elif [ $n -eq 100 ]
then	
    echo "No, given numbr "$n" is equal to 100 "
else
    echo "given number "$n" is leass than 100"
fi
