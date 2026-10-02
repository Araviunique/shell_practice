#!/bin/bash

USERID=$(id -u)
#Check root access or not 
if [ $USERID -ne 0 ]; then
    echo "Please run the Script with root access"
    exit 1
fi
#echo "i am continuing..."

dnf list installed mysql

if [ $? -eq 0 ]; then
echo "Mysql already installed .....SKIPPING"
echo "Installing Mysql"
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing mysql is.... FAILED"
    exit 1
else
    echo "imstalling mysql is... SUCCESS"
fi
