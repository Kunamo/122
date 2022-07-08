#!/bin/bash

read -p "Which Directoy would you like to search? (ls yourPrompt): " directory

Success=0
MinorError=1
SeriousError=2

ls $directory 2> /dev/null

#ls --help:
#   Exit status:
#       0  if OK,
#       1  if minor problems (e.g., cannot access subdirectory),
#       2  if serious trouble (e.g., cannot access command-line argument).

if [ $? -eq $SeriousError ]; then
  echo "Serious Error: $directory not found, or no sufficent permissions"
  elif [ $? -eq $Success ]; then
    echo "Success: $directory found"
    elif [ $? -eq $MinorError ]; then
      echo "Minor Error: $directory found but cannot access subdirectories"
fi
