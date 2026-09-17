#!/bin/bash
# Skript arvutab vahemikus 1 kuni 10 olevate paarisarvude summa.

summa=0
for (( i=1; i<=10; i++ )); do
    if [ $(expr $i % 2) -eq 0 ]; then
        summa=$(expr $summa + $i)
    fi
done

echo "Arvude vahemikus 1 kuni 10 (kaasaarvutud) paarisarvude summa on: $summa"
