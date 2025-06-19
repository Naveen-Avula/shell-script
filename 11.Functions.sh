#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "you are not the root user, please run the script as root user"
exit 1 #manually exit the script because the user is not root
else
echo "you are the root user"
fi

VALIDATE(){
    echo "Exit status:$1"
    echo "what are u dng: $2"
}




dnf install mysql -y
VALIDATE $? "Installing my sqll"

dnf install git -y
VALIDATE $? "Installing my Git"

