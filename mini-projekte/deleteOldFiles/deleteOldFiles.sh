#!/bin/bash

#Erstellen Sie ein Script, dass alle Files auflistet, die älter als ein bestimmtes Datum sind und auf Wunsch können diese gelöscht werden.
#Bauen Sie das Script so, dass es entweder interaktiv abfragt (Datum, Löschen Ja/Nein) oder die Informationen als Parameter übergeben werden können.
#Bauen Sie zusätzlich einen Verbose-Mode (Silent-Mode) ein.

#Create files with older timestamp

touch -d "Thu, 1 March 2018 12:30:00" plsRememberMe.txt
touch -d "Thu, 1 March 2018 12:30:00" byeByeWorld.txt
touch -d "Thu, 1 March 2018 12:30:00" tooLongOnThisWorld.txt

waitParam=5

echo "Files being created, waiting $waitParam seconds... (INFO: sometimes its buggy and might not show the files being created / deleted)"
sleep $waitParam

date=$1

find . -type f -mtime +"$1" -delete
echo "files deleted"
