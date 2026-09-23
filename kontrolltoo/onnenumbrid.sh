#!/bin/bash
# Skript leiab kõik õnnenumbrid vahemikus 1000–9999,
# mille numbrite korduv summa annab tulemuseks 7.

for (( algne=1000; algne<=9999; algne++ )); do
    hetke_arv=$algne

    # Kordame numbrite liitmist seni, kuni tulemuseks jääb ühekohaline arv (suurem kui 9)
    while [ $hetke_arv -gt 9 ]; do
        summa=0
        temp=$hetke_arv

        # Erandatame numbrid arvutuslikult % 10 ja / 10 abil ning liidame kokku
        while [ $temp -gt 0 ]; do
            jaak=$((temp % 10))
            summa=$((summa + jaak))
            temp=$((temp / 10))
        done

        hetke_arv=$summa
    done

    # Kui lõpptulemus on 7, väljastame algse arvu
    if [ $hetke_arv -eq 7 ]; then
        echo "$algne"
    fi
done
