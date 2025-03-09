#!/bin/bash

KULKA=$((RANDOM % 37 + 1))
echo "Postawiliście Zakłady? Tak Kliknijcie Enter!"
read goto
if [[ $KULKA == "1" ]]; then
echo "Zielone!"
elif [[ $KULKA > "1" && $KULKA < "20" ]]; then
echo "Czerwone!"
elif [[ $KULKA > "19" ]]; then
echo "Czarne!"
fi
