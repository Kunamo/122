#!/bin/bash
#check if file exist, if true then delete it
if [ -f "PersonPasswort.txt" ]; then
  rm PersonPasswort.txt
fi

join -1 3 -2 1 Person.txt Passwort.txt > PersonPasswort.txt
