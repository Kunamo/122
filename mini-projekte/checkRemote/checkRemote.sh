#!/bin/bash
echo "NEW SESSION STARTED: $(date)" >> log.txt

read -p "Enter how many websites you want to ping: " rounds

echo "$(date):  Entered $rounds websites to ping, results down below" >> log.txt

for ((i=0; i<$rounds; i++))
do
  read -p "Enter a website (format = example-website.com): " website
  echo "$(date):  Pinging: $website" >> log.txt
  curl -s http://www.$website > /dev/null
  if [ $? -eq 0 ]
  then
    echo "$(date):  $website is up" >> log.txt
    echo "$website is up"
  else
    echo "$(date):  $website is down or doesn't exist" >> log.txt
    echo "$website is down or doesn't exist"
  fi
done
