#!/bin/bash
# IFS ja sõnade eraldamine

tekst="koer;kass;hiir"
IFS=';'

for loom in $tekst; do
    echo "Loom: $loom"
done
