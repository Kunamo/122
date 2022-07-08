#!/bin/bash
source loggers.sh

__msg_info "You will be asked two prompts: 1. If you want to creat a lockfile prior to running | 2. If you want to try running a second instance of the script (to test out lock-mechanism)"

read -p "Do you want to create a lock (will be automatically deletd after the script) before running? (only one instance possible will be possible) (y/n): " lockCreateAnswer
read -p "Do you want to run a second instance to test out the lock-mechanism? (y/n): " lockMechanismAnswer

checkForLock(){
    if [ -f lock.txt ]
    then
      __msg_error "Lock found, exiting Script"
      #exit 1
      trap "rm -f lock.txt && exit 1" 1 exit 1
    else
      __msg_info "No lock detected..."
    fi
}

if [ "$lockCreateAnswer" == "y" ]; then
  __msg_info "Creating lock"
  touch lock.txt
  __msg_info "lock created, waiting 7 seconds, check the file manager"
  sleep 7

  elif [ "$lockCreateAnswer" == "n" ]; then
    __msg_info "No lock created"
fi

bash cleanSlate.sh 50 &
__msg_info "cleanSlate.sh running and put in background (this will maybe take some time)..."

if [ "$lockMechanismAnswer" == "y" ]; then
  __msg_info "Trying to run second instance"
  checkForLock
  #should exit here if lock is present
  bash cleanSlate.sh 50 &
  elif [ "$lockMechanismAnswer" == "n" ]; then
    sleep 0

fi

trap "rm -f lock.txt && exit 0 " 0 exit
