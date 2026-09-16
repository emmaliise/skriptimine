#!/bin/bash
# Väljastab kasutajanimed süsteemist

for kasutaja in $(cut -d: -f1 /etc/passwd); do
    echo "Kasutaja: $kasutaja"
done
