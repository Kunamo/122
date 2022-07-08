#!/bin/bash
#Ich habe den Befehl "man" bei mir nicht verfügbar. (Windows, IDEA64, GitBash, IDEA64 Konsole: GitBash)
man $1 | head -n4 | tail -n1 | cut -b 8-
