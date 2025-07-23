#!/bin/bash

DISK_USAGE=$(df -hT |grep xfx)
DISK_THRESHOLD=7

while IFS= read -r line
do
USAGE=$(echo $line |awk -F " " '{print $6F}' | cut -d "%" -f1)
FOLDER=$(echo $line |awk -F " " '{print $NF}')

if [ $USAGE -ge $DISK_THRESHOLD ]
then 
echo "$FOLDER is more than $DISK_THRESHOLD% full, current usage is $USAGE%"
fi

done <<< ${DISK_USAGE}