#!/bin/bash
ID=$(id -u)

echo "Sript name:: $0"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE=/tmp/$0-$TIMESTAMP.log
R='\e[31m'
G='\e[32m'
N='\e[0m'

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 $R Installation faild $N"
        exit 1
    else
        echo -e "$2 $G Installation successful $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e " $R Error:: Please install with root account $N"
    exit 1
else
    echo -e "$G You are ROOT user $N"
fi

yum install mysql1 -y &>> $LOGFILE

VALIDATE $? "MySql"

yum install git1 -y &>> $LOGFILE

VALIDATE $? "git"