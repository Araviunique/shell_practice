#!/bin/bash

USERID=$(id -u)
#Check root access or not 
if [ $USERID -ne 0 ]; then
    echo "Please run the Script with root access"
    exit 1
fi

echo "Installing Mysql"
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing mysql is.... failed"
    exit 1
else
    echo "imstalling mysql is... Success"
fi
