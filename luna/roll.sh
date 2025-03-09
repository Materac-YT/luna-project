#!/bin/bash

ilosc() {
echo "Ile Kości Rzucić [1-3]?"
read kosc

if [[ $kosc != "1" && $kosc != "2" && $kosc != "3" ]]; then
	ilosc
fi
}
k1() {
K1=$((RANDOM % 6 + 1))
echo "Wyzucona Kość '$K1'!"
}
k2() {
K1=$((RANDOM % 6 + 1))
K2=$((RANDOM % 6 + 1))
K=$(($K1 + $K2))
echo "Wyrzucone Kości '$K1 + $K2 = $K'!"
}
k3() {
K1=$((RANDOM % 6 + 1))
K2=$((RANDOM % 6 + 1))
K3=$((RANDOM % 6 + 1))
K=$(($K1 + $K2 + $K3))
echo "Wyrzucone Kości '$K1 + $K2 + $K3 = $K'!"
}

ilosc
if [[ $kosc == "1" ]]; then
k1
elif [[ $kosc == "2" ]]; then
k2
elif [[ $kosc == "3" ]]; then
k3
fi
