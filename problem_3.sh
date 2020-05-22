#!/usr/bin

airport_code () {
	awk '{print $1}' /ufrc/bsc4452/share/Class_Files/data/flights.May2017-Apr2018.csv | cut -f 3 -d "," | sort -u | sed "244d"

}

airport_code
