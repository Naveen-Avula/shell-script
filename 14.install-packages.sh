#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1,2)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo -e "$2... $R FAILURE $N"
        # exit 1
   else
       echo -e "$2... $G SUCCESS $N"
   fi
}

for i in $@
do 
echo "package to install :$i"
dnf list installed $i &>>$LOGFILE
if [ $? -eq 0 ] 
then 
echo -e "$i is already installed.. $Y SKIPPING $N"
else
dnf install $i -y  &>>LOGFILE
VALIDATE $? "Insallation of $i"
fi
done