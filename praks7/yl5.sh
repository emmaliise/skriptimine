#!/bin/bash
# Skript väljastab kujundi 'o' ja '*' sümbolitega.

echo -n "Sisesta ridade arv: "
read rida

for (( i=1; i<=rida; i++ )); do
    echo -n "$i. "
    
    # Väljastame 'o' sümbolid
    for (( j=1; j<=(rida-i); j++ )); do
        echo -n "o "
    done
    
    # Väljastame '*' sümbolid
    for (( j=1; j<=i; j++ )); do
        echo -n "* "
    done
    
    echo ""
done
