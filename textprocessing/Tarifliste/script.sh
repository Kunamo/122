#!/bin/bash
#only german text
#only main-groups
#only two distinct columns
#goint to use grep, cut (sort, wc)

#make so you can do: script.sh Export.spl output.txt
#Check if if no parameters are given -> give instructions on how to use the file

cat ExportSmall.spl | grep 2 | grep -v "2  26" | cut -f 3,4 | grep '[A-Z][0-9]{1,6}'
