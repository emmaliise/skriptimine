#!/bin/bash
# Skript kontrollib, kas sisestatud arv on algarv.

echo -n "Sisesta suvaline arv: "
read arv

if [ $arv -lt 2 ]; then
    echo "$arv - ei ole algarv"
    exit 0
fi

jagaja=2
while [ $(expr $arv % $jagaja) -ne 0 ]; do
    jagaja=$(expr $jagaja + 1)
done

if [ $jagaja -eq $arv ]; then
    echo "$arv - on algarv"
else
    echo "$arv - ei ole algarv"
fi
