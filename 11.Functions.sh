#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1,2)
LOGFILE=/tmp/SCRIP_NAME-$TIMESTAMP.log


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

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing my sql"

dnf install git -y  &>>$LOGFILE
VALIDATE $? "Installing my Git"

