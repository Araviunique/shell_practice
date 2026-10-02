#!/bin/bash

USERID=$(id -u)
#Check root access or not 
if [ $USERID -ne 0 ]
echo "Please run the Script with root access"
exit 1
fi