#!/bin/bash
# Skript arvutab reisijate ja kohtade arvu põhjal vajalike busside koguarvu.

echo -n "Sisesta reisijate arv: "
read reisijad

echo -n "Sisesta kohtade arv bussis: "
read kohad

bussid=$(expr $reisijad / $kohad)
maha_jaanud=$(expr $reisijad % $kohad)

if [ $maha_jaanud -gt 0 ]; then
    bussid=$(expr $bussid + 1)
fi

echo "Kokku on vaja $bussid bussi"
