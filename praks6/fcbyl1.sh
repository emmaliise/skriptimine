#!/bin/bash
# Katkestab tsükli väärtusel 7

for i in {1..10}; do
    if [ $i -eq 7 ]; then
        echo "Väärtus jõudis 7-ni, katkestan."
        break
    fi
    echo "Arv: $i"
done
