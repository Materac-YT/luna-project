#!/bin/bash

GOTO=0

LUNA=$(grep '"name_me"' ~/luna/luna.json | cut -d '"' -f 4)

if [[ $1 == "Hej!" ]]; then
USER=$(grep '"name_user"' ~/luna/luna.json | cut -d '"' -f 4)
echo "Hej, $USER!"

elif [[ $1 == "myname" ]]; then
	JSON_FILE=~/luna/luna.json
	sed -i 's/\("name_user": *"\)[^"]*/\1'"$2"'/' "$JSON_FILE"
	USER=$(grep '"name_user"' ~/luna/luna.json | cut -d '"' -f 4)
	echo "Hej $USER, Jestem $LUNA!"
elif [[ $1 == "goto" ]]; then

PLACEGOTO1=$(grep '"place"' ~/luna/json/goto/folder_1.json | cut -d '"' -f 4)
NAMEGOTO1=$(grep '"name"' ~/luna/json/goto/folder_1.json | cut -d '"' -f 4)
PLACEGOTO2=$(grep '"place"' ~/luna/json/goto/folder_2.json | cut -d '"' -f 4)
NAMEGOTO2=$(grep '"name"' ~/luna/json/goto/folder_2.json | cut -d '"' -f 4)
PLACEGOTO3=$(grep '"place"' ~/luna/json/goto/folder_3.json | cut -d '"' -f 4)
NAMEGOTO3=$(grep '"name"' ~/luna/json/goto/folder_3.json | cut -d '"' -f 4)
PLACEGOTO4=$(grep '"place"' ~/luna/json/goto/folder_4.json | cut -d '"' -f 4)
NAMEGOTO4=$(grep '"name"' ~/luna/json/goto/folder_4.json | cut -d '"' -f 4)
PLACEGOTO5=$(grep '"place"' ~/luna/json/goto/folder_5.json | cut -d '"' -f 4)
NAMEGOTO5=$(grep '"name"' ~/luna/json/goto/folder_5.json | cut -d '"' -f 4)

	if [[ $2 == "home" ]]; then
	echo "$LUNA Przechodzi Do Katalog Domowego..."
	cd ~
	GOTO=1
	echo "Zrobione!"

	elif [[ $2 == "disk" ]]; then
	echo "$LUNA Przechodzi Do Katalogu Dysku..."
	cd /
	GOTO=1
	echo "Już!"

	elif [[ $2 == $NAMEGOTO1 ]]; then
	echo "$LUNA Przechodzi Do Katalogu $NAMEGOTO1..."
	cd $PLACEGOTO1
	GOTO=1
	echo "Gotowe!"

        elif [[ $2 == $NAMEGOTO2 ]]; then
        echo "$LUNA Przechodzi Do Katalogu $NAMEGOTO2..."
        cd $PLACEGOTO2
	GOTO=1
        echo "Gotowe!"

        elif [[ $2 == $NAMEGOTO3 ]]; then
        echo "$LUNA Przechodzi Do Katalogu $NAMEGOTO3..."
        cd $PLACEGOTO3
	GOTO=1
        echo "Gotowe!"

        elif [[ $2 == $NAMEGOTO4 ]]; then
        echo "$LUNA Przechodzi Do Katalogu $NAMEGOTO4..."
        cd $PLACEGOTO4
	GOTO=1
        echo "Gotowe!"

        elif [[ $2 == $NAMEGOTO5 ]]; then
        echo "$LUNA Przechodzi Do Katalogu $NAMEGOTO5..."
        cd $PLACEGOTO5
	GOTO=1
        echo "Gotowe!"

	else

	echo "Użycie: luna goto home | disk | $NAMEGOTO1 | $NAMEGOTO2 | $NAMEGOTO3 | $NAMEGOTO4 | $NAMEGOTO5"

	fi

	if [[ $3 == "ls" && $GOTO == "1" ]]; then

	ls

	else
		if [[ $GOTO == "1" ]]; then
		echo "Pamiętaj, Możesz Na Końcu Komendy Dopisać ls Żeby Zobaczyć Zawartość Katlogu Po 'Przybyciu'!"
		fi

	fi

elif [[ $1 == "run" ]]; then

PLACERUN1=$(grep '"place"' ~/luna/json/run/program_1.json | cut -d '"' -f 4)
NAMERUN1=$(grep '"name"' ~/luna/json/run/program_1.json | cut -d '"' -f 4)
TYPERUN1=$(grep '"type"' ~/luna/json/run/program_1.json | cut -d '"' -f 4)
PLACERUN2=$(grep '"place"' ~/luna/json/run/program_2.json | cut -d '"' -f 4)
NAMERUN2=$(grep '"name"' ~/luna/json/run/program_2.json | cut -d '"' -f 4)
TYPERUN2=$(grep '"type"' ~/luna/json/run/program_2.json | cut -d '"' -f 4)
PLACERUN3=$(grep '"place"' ~/luna/json/run/program_3.json | cut -d '"' -f 4)
NAMERUN3=$(grep '"name"' ~/luna/json/run/program_3.json | cut -d '"' -f 4)
TYPERUN3=$(grep '"type"' ~/luna/json/run/program_3.json | cut -d '"' -f 4)
PLACERUN4=$(grep '"place"' ~/luna/json/run/program_4.json | cut -d '"' -f 4)
NAMERUN4=$(grep '"name"' ~/luna/json/run/program_4.json | cut -d '"' -f 4)
TYPERUN4=$(grep '"type"' ~/luna/json/run/program_4.json | cut -d '"' -f 4)
PLACERUN5=$(grep '"place"' ~/luna/json/run/program_5.json | cut -d '"' -f 4)
NAMERUN5=$(grep '"name"' ~/luna/json/run/program_5.json | cut -d '"' -f 4)
TYPERUN5=$(grep '"type"' ~/luna/json/run/program_5.json | cut -d '"' -f 4)

	if [[ $2 == "$NAMERUN1" ]]; then
	$TYPERUN1$PLACERUN1

	elif [[ $2 == "$NAMERUN2" ]]; then
	$TYPERUN2$PLACERUN2

	elif [[ $2 == "$NAMERUN3" ]]; then
        $TYPERUN3$PLACERUN3

	elif [[ $2 == "$NAMERUN4" ]]; then
        $TYPERUN4$PLACERUN4

	elif [[ $2 == "$NAMERUN5" ]]; then
        $TYPERUN5$PLACERUN5

	else
	echo "Użycie: luna run $NAMERUN1 | $NAMERUN2 | $NAMERUN3 | $NAMERUN4 | $NAMERUN5"

	fi

elif [[ $1 == "open" ]]; then

PLACEOPEN1=$(grep '"place"' ~/luna/json/open/file_1.json | cut -d '"' -f 4)
NAMEOPEN1=$(grep '"name"' ~/luna/json/open/file_1.json | cut -d '"' -f 4)
TYPEOPEN1=$(grep '"type"' ~/luna/json/open/file_1.json | cut -d '"' -f 4)
PLACEOPEN2=$(grep '"place"' ~/luna/json/open/file_2.json | cut -d '"' -f 4)
NAMEOPEN2=$(grep '"name"' ~/luna/json/open/file_2.json | cut -d '"' -f 4)
TYPEOPEN2=$(grep '"type"' ~/luna/json/open/file_2.json | cut -d '"' -f 4)
PLACEOPEN3=$(grep '"place"' ~/luna/json/open/file_3.json | cut -d '"' -f 4)
NAMEOPEN3=$(grep '"name"' ~/luna/json/open/file_3.json | cut -d '"' -f 4)
TYPEOPEN3=$(grep '"type"' ~/luna/json/open/file_3.json | cut -d '"' -f 4)
PLACEOPEN4=$(grep '"place"' ~/luna/json/open/file_4.json | cut -d '"' -f 4)
NAMEOPEN4=$(grep '"name"' ~/luna/json/open/file_4.json | cut -d '"' -f 4)
TYPEOPEN4=$(grep '"type"' ~/luna/json/open/file_4.json | cut -d '"' -f 4)
PLACEOPEN5=$(grep '"place"' ~/luna/json/open/file_5.json | cut -d '"' -f 4)
NAMEOPEN5=$(grep '"name"' ~/luna/json/open/file_5.json | cut -d '"' -f 4)
TYPEOPEN5=$(grep '"type"' ~/luna/json/open/file_5.json | cut -d '"' -f 4)

	if [[ $2 == "$NAMEOPEN1" ]]; then

	$TYPEOPEN1 $PLACEOPEN1

	elif [[ $2 == "$NAMEOPEN2" ]]; then

	$TYPEOPEN2 $PLACEOPEN2

	elif [[ $2 == "$NAMEOPEN3" ]]; then

	$TYPEOPEN3 $PLACEOPEN3

	elif [[ $2 == "$NAMEOPEN4" ]]; then

	$TYPEOPEN4 $PLACEOPEN4

	elif [[ $2 == "$NAMEOPEN5" ]]; then

	$TYPEOPEN5 $PLACEOPEN5

	else

	echo "Użycie: luna open $NAMEOPEN1 | $NAMEOPEN2 | $NAMEOPEN3 | $NAMEOPEN4 | $NAMEOPEN5"

	fi

elif [[ $1 == "app" ]]; then
APT=$(grep '"apt"' ~/luna/app.json | cut -d '"' -f 4)
SNAP=$(grep '"snap"' ~/luna/app.json | cut -d '"' -f 4)
FLATPAK=$(grep '"flatpak"' ~/luna/app.json | cut -d '"' -f 4)

	if [[ $2 == "all" ]]; then
		if [[ $3 == "update" ]]; then
		echo "	Aktualizowanie Wszystkich Bibliotek, Pakietów I Programów..."
			if [[ $APT == "true" ]]; then
			sudo apt update
			sudo apt upgrade -y

			fi

			if [[ $SNAP == "true" ]]; then
			sudo snap refresh

			fi

			if [[ $FLATPAK == "true" ]]; then
			sudo flatpak update -y

			fi

		elif [[ $3 == "list" ]]; then
		echo "Listowanie Wszystkich Programów..."
                        if [[ $APT == "true" ]]; then
                        apt list --installed

                        fi

                        if [[ $SNAP == "true" ]]; then
                        snap list

                        fi

                        if [[ $FLATPAK == "true" ]]; then
                        flatpak list --app

                        fi

		else
		echo "Użycie: luna app all update | list"

		fi

	elif [[ $2 == "apt" && $APT == "true" ]]; then
		if [[ $3 == "update" ]]; then
                echo "Uaktualninaie Wszystkich Programów, Bibliotek I Pakietów Z apt..."
		sudo apt update
		sudo apt upgrade -y

		elif [[ $3 == "list" ]]; then
		echo "Oto Lista Wszystkich Programów, Bibliotek I Pakietów Z apt..."
		apt list --installed

		else
		echo "Użycie: luna app apt update | list"

		fi
	elif [[ $2 == "snap" && $SNAP == "true" ]]; then
		if [[ $3 == "update" ]]; then
		echo "Aktualizowanie Wszystkich Snap'ów..."
		sudo snap refresh

		elif [[ $3 == "list" ]]; then
		echo "Wyświetlam Listę Wszystkich Snap'ów..."
		snap list

		else
		echo "Użycie: luna app snap update | list"

		fi

	elif [[ $2 == "flatpak" && $FLATPAK == "true" ]]; then
		if [[ $3 == "update" ]]; then
		echo "Aktualizacja Wszystkich Programów Zainstalowanych Z Flatpak..."
		sudo flatpak update -y

		elif [[ $3 == "list" ]]; then
		echo "Lista Wszystkich Programów Zainstalowanych Z Flatpak..."
		flatpak list --app

		else
		echo "Użycie: luna app flatpak update | list"

		fi

	else

		if [[ $APT == "true" ]]; then
		APTTEXT=" | apt"

		elif [[ $APT == "false" ]]; then
		APTTEXT=""

		fi

		if [[ $SNAP == "true" ]]; then
		SNAPTEXT=" | snap"

		elif [[ $SNAP == "false" ]]; then
		SNAPTEXT=""

		fi

		if [[ $FLATPAK == "true" ]]; then
		FLATPAKTEXT=" | flatpak"

		elif [[ $FLATPAK == "false" ]]; then
		FLATPAKTEXT=""

		fi

	echo "Użycie: luna app all$APTTEXT$SNAPTEXT$FLATPAKTEXT"

	fi

elif [[ $1 == "power" ]]; then

	if [[ $2 == "off" ]]; then
	echo "Wyłączanie Systemu..."
	poweroff

	elif [[ $2 == "reboot" ]]; then
	echo "Restart Systemu..."
	reboot

	elif [[ $2 == "logout" ]]; then
	echo "Wylogowywanie..."
	gnome-session-quit --logout --no-prompt

	elif [[ $2 == "hiber" ]]; then
	sudo systemctl hibernate

	elif [[ $2 == "sleep" ]]; then
	systemctl suspend

	elif [[ $2 == "hibrid" ]]; then
	sudo systemctl hybrid-sleep

	elif [[ $2 == "battery" ]]; then
	STATUS=$(cat /sys/class/power_supply/BAT0/status)
	CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)

	echo "Stan baterii: $STATUS"
	echo "Poziom naładowania: $CAPACITY%"

	else
	echo "Użycie luna power off | reboot | logout | hiber | sleep | hibrid | battery"

	fi

elif [[ $1 == "play" ]]; then
	if [[ $2 == "roll" ]]; then
	. ~/luna/roll.sh
	elif [[ $2 == "rulette" ]]; then
	. ~/luna/games/rulette.sh
	elif [[ $2 == "russianrulette" ]]; then
	. ~/luna/games/russianrulette.sh
	elif [[ $2 == "tictactoe" ]]; then
	. ~/luna/games/tictactoe.sh
	else
		if [[ -e ~/luna/games/russianrulette.sh ]]; then
			RR=" | russianrulette"
		else
			RR=""
		fi
		if [[ -e ~/luna/games/rulette.sh ]]; then
			R=" | rulette"
		else
			R=""
		fi
		if [[ -e ~/luna/games/tictactoe.sh ]]; then
			TTT=" | tictactoe"
		else
			TTT=""
		fi
		echo "Użycie: luna play roll$RR$R$TTT"
	fi
else

echo "Użycie: luna Hej! | myname | goto | run | open | app | power | play"

fi
