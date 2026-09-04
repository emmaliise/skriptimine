#!/bin/bash
# Skript arvutab tordi mõõtmete ja kihtide põhjal vajaminevate küpsisepakkide arvu.

echo -n "Sisesta kandiku pikkus (cm): "
read kandik_pikkus

echo -n "Sisesta kandiku laius (cm): "
read kandik_laius

echo -n "Sisesta küpsise pikkus (cm): "
read kypsis_pikkus

echo -n "Sisesta küpsise laius (cm): "
read kypsis_laius

echo -n "Sisesta tordi kihtide arv: "
read kihte

echo -n "Sisesta küpsiste arv ühes pakis: "
read paki_suurus

pikkus_tk=$(expr $kandik_pikkus / $kypsis_pikkus)
laius_tk=$(expr $kandik_laius / $kypsis_laius)
kihi_kypsised=$(expr $pikkus_tk \* $laius_tk)
kokku_kypsised=$(expr $kihi_kypsised \* $kihte)
pakkide_arv=$(expr \( $kokku_kypsised + $paki_suurus - 1 \) / $paki_suurus)

echo "Tordi valmistamiseks läheb vaja $kokku_kypsised küpsist."
echo "Poest tuleb osta $pakkide_arv pakki küpsiseid."
