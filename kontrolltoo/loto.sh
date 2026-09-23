#!/bin/bash
# Skript genereerib 5 erinevat juhuslikku arvu vahemikus 1–50.
# Dublikaatide kontrollimiseks ja numbrite loendamiseks kasutatakse ajutist faili.

TMP_FILE="ajutised_numbrid.tmp"

# Tühjendame ajutise faili enne uut käivitust
> "$TMP_FILE"

# Generatsiooni tsükkel: kestab kuni ajutises failis on 5 rida (kasutades wc -l)
while [ $(wc -l < "$TMP_FILE") -lt 5 ]; do
    # $RANDOM % 50 annab 0..49, +1 annab vahemiku 1..50
    num=$(( (RANDOM % 50) + 1 ))

    # grep -qx kontrollib, kas täpne arv ($num) on juba failis olemas
    if ! grep -qx "$num" "$TMP_FILE"; then
        echo "$num" >> "$TMP_FILE"
    fi
done

# Võtame praeguse kuupäeva ja kellaaja ning vormindame numbrid ühele reale
kuupaev=$(date "+%d.%m.%Y %H:%M:%S")
numbrid=$(tr '\n' ' ' < "$TMP_FILE")

echo "Vali, kuidas soovid tulemust näha:"
echo "1) Kuva terminalis"
echo "2) Salvesta faili"
echo -n "Sisesta valik (1 või 2): "
read valik

if [ "$valik" -eq 1 ]; then
    echo "----------------------------------------"
    echo "Aeg: $kuupaev"
    echo "Lotonumbrid: $numbrid"
    echo "----------------------------------------"
elif [ "$valik" -eq 2 ]; then
    echo "$kuupaev - Lotonumbrid: $numbrid" >> tulemused.txt
    echo "Tulemus on edukalt salvestatud faili 'tulemused.txt'."
else
    echo "Vigane valik! Kuvame tulemuse terminalis:"
    echo "$kuupaev - Lotonumbrid: $numbrid"
fi

# Kustutame ajutise faili
rm -f "$TMP_FILE"
