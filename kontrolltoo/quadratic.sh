#!/bin/bash
# Skript ruutvõrrandi Ax^2 + Bx + C = 0 lahendamiseks.

# Kontrollime, et kasutaja sisestaks täpselt 3 argumenti
if [ $# -ne 3 ]; then
    echo "Kasutus: $0 A B C"
    echo "Näide: $0 1 -3 2"
    exit 1
fi

A=$1
B=$2
C=$3

# Kontrollime, et kordaja A ei oleks 0
if [ $(echo "$A == 0" | bc -l) -eq 1 ]; then
    echo "Viga: Kordaja A ei tohi olla 0 (see ei oleks ruutvõrrand)!"
    exit 1
fi

# Arvutame diskriminandi: D = B^2 - 4AC
D=$(echo "($B)^2 - 4 * $A * $C" | bc -l)

# Kontrollime diskriminandi märke
is_pos=$(echo "$D > 0" | bc -l)
is_zero=$(echo "$D == 0" | bc -l)

if [ $is_pos -eq 1 ]; then
    # Kaks reaalarvulist lahendit
    x1=$(echo "scale=10; (0 - ($B) + sqrt($D)) / (2 * $A)" | bc -l)
    x2=$(echo "scale=10; (0 - ($B) - sqrt($D)) / (2 * $A)" | bc -l)

    x1_formatted=$(printf "%.5f" "$x1")
    x2_formatted=$(printf "%.5f" "$x2")

    echo "Võrrandil on kaks lahendit:"
    echo "x1 = $x1_formatted"
    echo "x2 = $x2_formatted"

elif [ $is_zero -eq 1 ]; then
    # Üks reaalarvuline lahend
    x=$(echo "scale=10; (0 - ($B)) / (2 * $A)" | bc -l)

    x_formatted=$(printf "%.5f" "$x")

    echo "Võrrandil on üks lahend:"
    echo "x = $x_formatted"

else
    # Reaalarvulised lahendid puuduvad
    echo "Võrrandil puuduvad reaalarvulised lahendid (D < 0)."
fi
