#!/bin/bash
# Skript kontrollib kasurealt antud arvu paarsust.

if [ $# -ne 1 ]; then
    echo "Kaivita see skript koos arvuga mille paarsus soovid kontrollida. Naiteks: ./paarsus 3"
else
    jaak=$(expr $1 % 2)
    if [ $jaak -eq 0 ]; then
        echo "Antud arv on paaris"
    else
        echo "Antud arv on paaritu"
    fi
fi
