#!/bin/bash

DISK_USAGE=$(df -hT |grep xfs)
DISK_THRESHOLD=7

while IFS= read -r line
do
  USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
  FOLDER=$(echo $line | awk -F " " '{print $NF}')
  
  if [ $USAGE -ge $DISK_THRESHOLD ]
  then
    echo "Disk usage is above threshold for $FOLDER: $USAGE%"
    echo "Cleaning up old files in $FOLDER"
    
  fi
done <<< $DISK_USAGE