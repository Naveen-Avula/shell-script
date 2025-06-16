#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "you are not the root user, please run the script as root user"
exit 1 #manually exit the script because the user is not root
else
echo "you are the root user"
fi

dnf install mysql -y

if [ $? -ne 0 ] # Check if the last command was successful
then
echo "Installation of mysql failed, please check the error"
exit 1 # Exit the script if the installation failed
else
echo "Installation of mysql was successful"
fi
dnf install git -y
if [ $? -ne 0 ] # Check if the last command was successful
then
echo "Installation of git failed, please check the error"
exit 1 # Exit the script if the installation failed
else
echo "Installation of git was successful"
fi

echo "script completed successfully"