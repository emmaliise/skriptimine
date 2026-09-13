#!/bin/bash
# Skript tuvastab süsteemist kellaaja ja kasutaja nime ning väljastab personaalse tervituse.

tund=$(date +%H)
kasutaja=$(whoami)

if [ $tund -ge 6 -a $tund -lt 12 ]; then
    echo "Tere hommikust, $kasutaja!"
elif [ $tund -ge 12 -a $tund -lt 18 ]; then
    echo "Tere päevast, $kasutaja!"
elif [ $tund -ge 18 -a $tund -lt 22 ]; then
    echo "Tere õhtust, $kasutaja!"
elif [ \( $tund -ge 22 -a $tund -lt 24 \) -o \( $tund -ge 0 -a $tund -lt 6 \) ]; then
    echo "Head ööd, $kasutaja!"
else
    echo "Vigane kellaaeg!"
fi
