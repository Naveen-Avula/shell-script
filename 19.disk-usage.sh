#!/bin/bash

DISK_USAGE=$(df -hT |grep xfs)
DISK_THRESHOLD=7
MESSAGE=""

while IFS= read -r line
do
  USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
  FOLDER=$(echo $line | awk -F " " '{print $NF}')
  if [ $USAGE -ge $DISK_THRESHOLD ]
  then
MESSAGE+="$FOLDER is more than $DISK_THRESHOLS, current usage is :$USAGE% \n"
    
  fi
done <<< $DISK_USAGE

echo "Message:$MESSAGE"