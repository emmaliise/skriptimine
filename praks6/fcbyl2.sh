#!/bin/bash
# Küsib arve kuni sisestatakse 0, jätab negatiivsed vahele

while true; do
    echo -n "Sisesta number (0 lõpetab): "
    read arv

    if [ $arv -eq 0 ]; then
        echo "Lõpetan."
        break
    fi

    if [ $arv -lt 0 ]; then
        echo "Negatiivne arv jäetakse vahele!"
        continue
    fi

    echo "Sisestati positiivne arv: $arv"
done
