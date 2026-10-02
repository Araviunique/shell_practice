#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/home/ec2-user/shell-logs
LOGS_FILE="$LOGS_DIR/$0.log" #/home/ec2-user/shell-logs/10.logs.sh
#Check root access or not 
if [ $USERID -ne 0 ]; then
    echo "Please run the Script with root access"
    exit 1
fi
#echo "i am continuing..."
#first argument -->What you need to install
#Second Argument -->Exit code
VALIDATE(){

    if [ $2 -ne 0 ]; then
        echo "Installing $1 is.... FAILED"
        exit 1
    else
    echo "installing S1 is... SUCCESS"
    fi
}
dnf list installed mysql &>> $LOGS_FILE

if [ $? -eq 0 ]; then
    echo "Mysql already installed .....SKIPPING"
else
    echo "Installing Mysql"
    dnf install mysql -y &>> $LOGS_FILE
    VALIDATE Mysql $?
    
fi
dnf list installed nginx &>> $LOGS_FILE

if [ $? -eq 0 ]; then
    echo "Nginx already installed .....SKIPPING"
else
    echo "Installing Nginx"
    dnf install nginx -y &>> $LOGS_FILE
    VALIDATE Mysql $?
fi