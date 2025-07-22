#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e "SOURCE_DIRECTORY  exists...$G CONTINUING $N"
else
    echo -e "SOURCE_DIRECTORY  does not exist...$R EXITING $N"
    exit 1
fi
