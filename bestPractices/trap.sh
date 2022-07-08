#!/bin/bash
for ((i=0; i<10; i++))
do
  ls notexisting
  trap "echo Trap Activated && exit" err exit
done
