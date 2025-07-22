#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "you are not the root user, please run the script as root user"
exit 1 #manually exit the script because the user is not root
else
echo "you are the root user"
fi

dnf install mysssql -y
dnf install git -y


echo "script completed successfully"