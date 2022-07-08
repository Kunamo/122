#!/bin/bash
if [ -f "final.txt" ]; then
  rm final.txt
fi
cat fox*.txt | sort | uniq -d > final.txt
