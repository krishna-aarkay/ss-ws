#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo "Error:: Please install with root account"
    exit 1
else
    echo "You are ROOT user"
fi

yum install mysqld -y
if [ $? -ne 0 ]
then
    echo "Installation faild"
    exit 1
else
    echo "Installation successful"
fi