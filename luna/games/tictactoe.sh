ai() {
POLE=$((RANDOM % 9 + 1))
if [[ $POLE == "1" && $A1 == " " ]]; then
	A1=O
elif [[ $POLE == "2" && $B1 == " " ]]; then
	B1=O
elif [[ $POLE == "3" && $C1 == " " ]]; then
	C1=O
elif [[ $POLE == "4" && $A2 == " " ]]; then
	A2=O
elif [[ $POLE == "5" && $B2 == " " ]]; then
	B2=O
elif [[ $POLE == "6" && $C2 == " " ]]; then
	C2=O
elif [[ $POLE == "7" && $A3 == " " ]]; then
	A3=O
elif [[ $POLE == "8" && $B3 == " " ]]; then
	B3=O
elif [[ $POLE == "9" && $C3 == " " ]]; then
	C3=O
else
ai
fi
}
g1() {
echo "Gdzie Chce X Zagrać [np.: B3]?"
read POLE1

if [[ $POLE1 == "A1" && $A1 == " " ]]; then
        A1=X
elif [[ $POLE1 == "B1" && $B1 == " " ]]; then
        B1=X
elif [[ $POLE1 == "C1" && $C1 == " " ]]; then
        C1=X
elif [[ $POLE1 == "A2" && $A2 == " " ]]; then
        A2=X
elif [[ $POLE1 == "B2" && $B2 == " " ]]; then
        B2=X
elif [[ $POLE1 == "C2" && $C2 == " " ]]; then
        C2=X
elif [[ $POLE1 == "A3" && $A3 == " " ]]; then
        A3=X
elif [[ $POLE1 == "B3" && $B3 == " " ]]; then
        B3=X
elif [[ $POLE1 == "C3" && $C3 == " " ]]; then
        C3=X
else
echo "Błąd Podaj Jeszcze Raz!"
g1
fi
}
g2() {
echo "Gdzie O Chce Zagrać [np.: A2]?"
read POLE2
if [[ $POLE2 == "A1" && $A1 == " " ]]; then
        A1=O
elif [[ $POLE2 == "B1" && $B1 == " " ]]; then
        B1=O
elif [[ $POLE2 == "C1" && $C1 == " " ]]; then
        C1=O
elif [[ $POLE2 == "A2" && $A2 == " " ]]; then
        A2=O
elif [[ $POLE2 == "B2" && $B2 == " " ]]; then
        B2=O
elif [[ $POLE2 == "C2" && $C2 == " " ]]; then
        C2=O
elif [[ $POLE2 == "A3" && $A3 == " " ]]; then
        A3=O
elif [[ $POLE2 == "B3" && $B3 == " " ]]; then
        B3=O
elif [[ $POLE2 == "C3" && $C3 == " " ]]; then
        C3=O
else
echo "Błąd Podaj Jeszcze Raz!"
g2
fi
}
pisz() {
echo " |1|2|3|"
echo "A|$A1|$A2|$A3|"
echo "B|$B1|$B2|$B3|"
echo "C|$C1|$C2|$C3|"
}
check() {
if [[ $A1 == "X" && $A2 == "X" && $A3 == "X" ]]; then
	echo "X Wygrał!"
	exit
elif [[ $B1 == "X" && $B2 == "X" && $B3 == "X" ]];then
	echo "X Wygrał!"
	exit
elif [[ $C1 == "X" && $C2 == "X" && $C3 == "X" ]]; then
	echo "X Wygrał!"
	exit
elif [[ $A1 == "X" && $B1 == "X" && $C1 == "X" ]]; then
	echo "X Wygrał!"
	exit
elif [[ $A2 == "X" && $B2 == "X" && $C2 == "X" ]]; then
	echo "X Wygrał!"
	exit
elif [[ $A3 == "X" && $B3 == "X" && $C3 == "X" ]]; then
	echo "X Wygrał!"
	exit
elif [[ $A1 == "X" && $B2 == "X" && $C3 == "X" ]]; then
	echo "X Wygrał!"
	exit
elif [[ $A3 == "X" && $B2 == "X" && $C1 == "X" ]]; then
	echo "X Wygrał!"
	exit
elif [[ $A1 == "O" && $A2 == "O" && $A3 == "O" ]]; then
        echo "O Wygrał!"
        exit
elif [[ $B1 == "O" && $B2 == "O" && $B3 == "O" ]];then
        echo "O Wygrał!"
        exit
elif [[ $C1 == "O" && $C2 == "O" && $C3 == "O" ]]; then
        echo "O Wygrał!"
        exit
elif [[ $A1 == "O" && $B1 == "O" && $C1 == "O" ]]; then
        echo "O Wygrał!"
        exit
elif [[ $A2 == "O" && $B2 == "O" && $C2 == "O" ]]; then
        echo "O Wygrał!"
        exit
elif [[ $A3 == "O" && $B3 == "O" && $C3 == "O" ]]; then
        echo "O Wygrał!"
        exit
elif [[ $A1 == "O" && $B2 == "O" && $C3 == "O" ]]; then
        echo "O Wygrał!"
        exit
elif [[ $A3 == "O" && $B2 == "O" && $C1 == "O" ]]; then
        echo "O Wygrał!"
        exit
else
	if [[ $A1 != " " && $A2 != " " && $A3 != " " && $B1 != " " && $B2 != " " && $B3 != " " && $C1 != " " && $C2 != " " && $C3 != " " ]]; then
		echo "Remis!"
		exit
	fi
fi
}
A1=" "
A2=" "
A3=" "
B1=" "
B2=" "
B3=" "
C1=" "
C2=" "
C3=" "
echo "Chcesz Grać Z Botem Czy Z Człowiekiem [solo|duo]?"
read co
if [[ $co == "duo" ]]; then
	while true; do
		pisz
		check
		g1
		pisz
		check
		g2
	done
elif [[ $co == "solo" ]]; then
	co2=$((RANDOM % 2 + 1))
	if [[ $co2 == "1" ]]; then
		while true; do
			pisz
			check
			g1
			pisz
			check
			ai
		done
	elif [[ $co2 == "2" ]]; then
		while true; do
			pisz
			check
			ai
			pisz
			check
			g1
		done
	fi
else
echo "Błąd!"
exit
fi
