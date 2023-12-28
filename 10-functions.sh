#!/bin/bash
ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "Installation faild"
        exit 1
    else
        echo "Installation successful"
    fi
}

if [ $ID -ne 0 ]
then
    echo "Error:: Please install with root account"
    exit 1
else
    echo "You are ROOT user"
fi

yum install mysql -y

VALIDATE $? 