#!/bin/bash

# Ask user for airport code or city for flights delayed and on time

echo Enter your airport code!

read varname

echo You chose $varname

# Look through directories

grep -e "$varname" /ufrc/bsc4452/share/Class_Files/data/flights.May2017-Apr2018.csv | 
   

echo flights delayed and on time for "$varname"

late_flights=o
ontime_flights=0 

grep "$varname" /ufrc/bsc4452/share/Class_Files/data/flights.May2017-Apr2018.csv | cut -f 16 -d "," \
|  while read i
do
  if [ "$i" == "1.00" ]
  then
   echo "Late"
   late_flights=$((late_flights+1))
  else
   echo "on time"
   ontime_flights=$((ontime_flights+1))
  fi
 echo "Late flights: $late_flights"
 echo "Ontime flights: $ontime_flights"
done
