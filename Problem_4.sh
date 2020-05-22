#!/usr/bin/bash

#Only selects the airports in Florida

 '{print $1}' | grep -o "\w*\s*\w*, FL" /ufrc/bsc4452/share/Class_Files/data/flights.May2017-Apr2018.csv | cut -f 4 | sort -u
