#!/bin/bash
# uniq : remove all duplicates
# sort : sort the list
#         -n sort it numerically
#         -r reverse it

cat testfile.txt | uniq | sort -n -r
