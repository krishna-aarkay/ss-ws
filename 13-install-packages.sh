#!/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ $ID -ne 0 ]
then
    echo "$R ERROR:: Please install the packages using root only $N"
    exit 1
else
    echo "$G Hola:: You are root user $N"
fi
