#!/bin/bash
# Skript arvutab sisestatud täisarvu numbrite summa.

echo -n "Sisesta suvaline täisarv: "
read arv

temp=${arv#-}
summa=0

while [ $temp -gt 0 ]; do
    jaak=$(expr $temp % 10)
    summa=$(expr $summa + $jaak)
    temp=$(expr $temp / 10)
done

if [ $arv -lt 0 ]; then
    summa=$(expr 0 - $summa)
fi

echo "Arvu $arv numbrite summa on $summa"
