#!/bin/bash

#Erstellen Sie ein Script, dass alle Files auflistet, die älter als ein bestimmtes Datum sind und auf Wunsch können diese gelöscht werden.
#Bauen Sie das Script so, dass es entweder interaktiv abfragt (Datum, Löschen Ja/Nein) oder die Informationen als Parameter übergeben werden können.
#Bauen Sie zusätzlich einen Verbose-Mode (Silent-Mode) ein.

date=$1

listfiles(){
    find . -type f -mtime "$date" -delete
    # find . -type f -name "$date" -delete --> works
}
listfiles
