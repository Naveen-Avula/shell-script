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
    if [ $1 -ne 0 ];
    then 
        echo "$2...Failure"
         exit 1
    else
         echo "$2...Success"
    fi
}

dnf install mysql -y
VALIDATE $? "Installing my sql"

dnf install git -y
VALIDATE $? "Installing my Git"

