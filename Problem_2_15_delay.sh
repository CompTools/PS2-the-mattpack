#!/usr/bin

# This script tells you how many flights were late by 15 minutes or more
# In the second grep change "ATL" to the airport of choice to receive the answers you seek


late_flights=0
ontime_flights=0

cat Flight_data  | grep -E '[[:digit:]]\,\"GNV\"' | grep "ATL" | cut -f 16 -d "," | while read i
do
  if (( $(echo "$i > 0.00" | bc -l) ))
  then
   echo "Late"
   late_flights=$((late_flights+1))
  elif [ "$i" == "0.00" ]
  then
   echo "on time"
   ontime_flights=$((ontime_flights+1))
  else
   echo "no data"
   nodata_flights=$((nodata_flights+1))
  fi
 echo "Late flights: $late_flights"
 echo "Ontime flights: $ontime_flights"
 echo "No data flights: $nodata_flights"
done
