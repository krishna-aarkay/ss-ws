#!/bin/bash
ID=$(id -u)

echo "Sript name:: $0"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE=/tmp/$0-$TIMESTAMP.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo '$2 "\e[31m" Installation faild "\e[0m"'
        exit 1
    else
        echo "$2 \e[32m Installation successful \e[0m"
    fi
}

if [ $ID -ne 0 ]
then
    echo "Error:: Please install with root account"
    exit 1
else
    echo "You are ROOT user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "MySql"

yum install git -y &>> $LOGFILE

VALIDATE $? "git"