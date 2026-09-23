#!/bin/bash
# Skript loeb iseenda faili ($0) ning väljastab selle sisu tagurpidi:
# tac pöörab ridade järjekorra ja rev pöörab rea sümbolid vastupidiseks.

tac "$0" | rev
