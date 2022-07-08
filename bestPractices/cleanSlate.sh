#!/bin/bash
source loggers.sh

touch myRainbow.txt

rounds=$1
for ((i = 0 ; i < rounds ; i++)); do
      echo $RANDOM | md5sum | head -c 20 >> myRainbow.txt
done
rand_dir_name="$(cat myRainbow.txt | tr -dc 'a-zA-Z0-9' | fold -w 16 | tail -n 1)"
echo "Random Directory Name: "$rand_dir_name >> myRandomDirectoryNames.txt

#Interactive mode
if [ -z $rounds ]; then
  __msg_info "This script is for creating random directory names"

  read -p "Enter how many rounds you want to generate (integer): " rounds

  __msg_info "The bigger the number, the longer it generates...please wait"

  for ((i = 0 ; i < $rounds ; i++)); do
      echo $RANDOM | md5sum | head -c 20 >> myRainbow.txt
  done

  rand_dir_name="$(cat myRainbow.txt | tr -dc 'a-zA-Z0-9' | fold -w 16 | tail -n 1)"
  echo "Random Directory Name: "$rand_dir_name
  echo "Random Directory Name: "$rand_dir_name >> myRandomDirectoryNames.txt
fi
