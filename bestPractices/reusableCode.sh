#!/bin/bash
source ./loggers.sh

read -p "Which Directoy would you like to search? (ls yourPrompt): " directory

Success=0
MinorError=1
SeriousError=2

echo -e "Results:" && ls $directory 2> /dev/null

#ls --help:
#   Exit status:
#       0  if OK,
#       1  if minor problems (e.g., cannot access subdirectory),
#       2  if serious trouble (e.g., cannot access command-line argument).

if [ $? -eq $SeriousError ]; then
  __msg_error "$directory not found, or no sufficent permissions"
  elif [ $? -eq $Success ]; then
    __msg_success "$directory found"
    elif [ $? -eq $MinorError ]; then
      __msg_warning "$directory found but cannot access subdirectories"
fi
