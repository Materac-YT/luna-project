#!/bin/bash

losowanie() {
	echo "Chcesz Pomieszać Czy Strzelić [roll|shoot]?"
	read ZADANIE

	if [[ $ZADANIE != "roll" && $ZADANIE != "shoot" ]]; then
		echo "Zły Input, Jeszcze Raz!"
		losowanie
	fi
}
dzialanie() {
	if [[ $ZADANIE == "roll" ]]; then
		if [[ $NABOJ == $POZYCJA ]]; then
			echo "Przegrałeś!"
			exit
		elif [[ $NABOJ != $POZYCJA ]]; then
			if [[ $POZYCJA == "6" ]]; then
				POZYCJA=1
			elif [[ $POZYCJA != "6" ]]; then
				POZYCJA=$(($POZYCJA + 1))
			fi
		fi
	elif [[ $ZADANIE == "shoot" ]]; then
		POZYCJA=$((RANDOM % 6 + 1))
                if [[ $NABOJ == $POZYCJA ]]; then
                        echo "Przegrałeś!"
                        exit
                elif [[ $NABOJ != $POZYCJA ]]; then
                        if [[ $POZYCJA == "6" ]]; then
                                POZYCJA=1
                        elif [[ $POZYCJA != "6" ]]; then
                                POZYCJA=$(($POZYCJA + 1))
                        fi
                fi
	fi
}
ai() {
	ZAD=$((RANDOM % 2 + 1))
	if [[ $ZAD == "1" ]]; then
		if [[ $NABOJ == $POZYCJA ]]; then
			echo "Wygrałeś!"
			exit
		elif [[ $NABOJ != $POZYCJA ]]; then
			if [[ $POZYCJA == "6" ]]; then
				POZYCJA=1
			elif [[ $POZCJA != "6" ]]; then
				POZYCJA=$(($POZYCJA + 1))

			fi
		fi
	elif [[ $ZAD != "1" ]]; then
		POZYCJA=$((RANDOM % 6 + 1))
		if [[ $NABOJ == $POZYCJA ]]; then
			echo "Wygrałeś!"
			exit
		elif [[ $NABOJ != $POZYCJA ]]; then
			if [[ $POZYCJA == "6" ]]; then
				POZYCJA=1
			elif [[ $POZYCJA != "6" ]]; then
				POZYCJA=$(($POZYCJA + 1))
			fi
		fi
	fi
}
g1c() {
	echo "Kolej Gracza 1: Chcesz Pomieszać Czy Strzelić [roll|shoot]?"
	read G1

	if [[ $G1 != "roll" && $G1 != "shoot" ]]; then
		echo "Zły Input Jeszcze Raz!"
		g1c
	fi
}
g2c() {
	echo "Kolej Gracza 2: Chcesz Pomieszać Czy Strzelić [roll|shoot]?"
	read G2

	if [[ $G2 != "roll" && $G2 != "shoot" ]]; then
		echo "Zły Input Jeszcze Raz!"
		g2c
	fi
}
g1d() {
	if [[ $G1 == "roll" ]]; then
		POZYCJA=$((RANDOM % 6 + 1))
		if [[ $NABOJ == $POZYCJA ]]; then
			echo "Gracz 1 Przegrał!"
			exit
		elif [[ $NABOJ != $POZYCJA ]]; then
			if [[ $NABOJ == "6" ]]; then
				POZYCJA=6
			elif [[ $NABOJ != "6" ]]; then
				POZYCJA=$(($POZYCJA + 1))
			fi
		fi
	elif [[ $G1 == "shoot" ]]; then
		if [[ $NABOJ == $POZYCJA ]]; then
			echo "Gracz 1 Przegrał!"
			exit
		elif [[ $NABOJ != $POZYCJA ]]; then
			if [[ $POZYCJA == "6" ]]; then
				POZYCJA=1
			elif [[ $POZYCJA != "6" ]]; then
				POZYCJA=$(($POZYCJA + 1))
			fi
		fi

	fi
}
g2d() {
	if [[ $G2 == "roll" ]]; then
		POZYCJA=$((RANDOM % 6 + 1))
	fi
	if [[ $NABOJ == $POZYCJA ]]; then
		echo "Gracz 2 Przegrał!"
		exit
	elif [[ $NABOJ != $POZYCJA ]]; then
		if [[ $POZYCJA == "6" ]]; then
			POZYCJA=1
		elif [[ $POZYCJA != "6" ]]; then
			POZYCJA=$(($POZYCJA + 1))
		fi
	fi
}
game() {
echo "Chcesz Grać Z Botem [solo] czy w dwie osoby [duo]?"
read GAME

if [[ $GAME == "solo" ]]; then
	losowanie
	while true; do
		dzialanie
		losowanie
		ai
	done
elif [[ $GAME == "duo" ]]; then
	while true; do
		g1c
		g1d
		g2c
		g2d
	done
else
game
fi
}

NABOJ=$((RANDOM % 6 + 1))
POZYCJA=$((RANDOM % 6 + 1))
game
