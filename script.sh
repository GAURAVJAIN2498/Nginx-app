#!/bin/bash

URL="https://google.com"
LOG_FILE="website.log"

STATUS=$(curl -o -L /dev/null -s -w "%{http_code}" $URL)

DATE=$(date)

if [ $STATUS -eq 200 ]; then
  echo "$DATE - website is working" >> $LOG_FILE
else
  echo "$DATE - website is down (Status: $STATUS)" >> $LOG_FILE
fi
