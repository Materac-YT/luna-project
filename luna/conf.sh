#!/bin/bash


echo "Jak Się Ma Do Ciebie Zwracać Luna?"
read USERS
sed -i 's/\("name_user": *"\)[^"]*/\1'"$USERS"'/' "$HOME/luna/luna.json"

echo "Jak Ma Się Nazywać Luna (Domyślnie: Luna)"
read ME
sed -i 's/\("name_me": *"\)[^"]*/\1'"$ME"'/' "$HOME/luna/luna.json"

echo "Czy Masz Menedżer Pakietów apt [T|N]?"
read APTTN
if [[ $APTTN == "t" || $APTTN == "T" ]]; then
sed -i 's/\("apt": *"\)[^"]*/\1'"true"'/' "$HOME/luna/app.json"

elif [[ $APTTN == "n" || $APTTN == "N" ]]; then
sed -i 's/\("apt": *"\)[^"]*/\1'"false"'/' "$HOME/luna/app.json"

fi

echo "Czy Masz Menedżer Pakietów snap [T|N]?"
read SNAPTN
if [[ $SNAPTN == "t" || $SNAPTN == "T" ]]; then
sed -i 's/\("snap": *"\)[^"]*/\1'"true"'/' "$HOME/luna/app.json"

elif [[ $SNAPTN == "n" || $SNAPTN == "N" ]]; then
sed -i 's/\("snap": *"\)[^"]*/\1'"false"'/' "$HOME/luna/app.json"

fi

echo "Czy Masz Menedżer Pakietów flatpak [T|N]?"
read FLATPAKTN
if [[ $FLATPAKTN == "t" || $FLATPAK == "T" ]]; then
sed -i 's/\("flatpak": *"\)[^"]*/\1'"true"'/' "$HOME/luna/app.json"

elif [[ $FLATPAKTN == "n" || $FLATPAKTN == "N" ]]; then
sed -i 's/\("flatpak": *"\)[^"]*/\1'"false"'/' "$HOME/luna/app.json"

fi

echo "Chcesz Skonfigurować Customowe Lokalizacje W Komendach run, goto i open [T|N]?"
read CON

if [[ $CON == "n" || $CON == "N" ]]; then
exit 0

elif [[ $CON == "t" || $CON == "T" ]]; then
source $HOME/luna/confmen.sh

fi

