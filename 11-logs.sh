#!/bin/bash
ID=$(id -u)

echo "Sript name:: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 Installation faild"
        exit 1
    else
        echo "$2 Installation successful"
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

VALIDATE $? "MySql"

yum install git -y

VALIDATE $? "git"