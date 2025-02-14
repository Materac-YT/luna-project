#!/bin/bash

echo "Którą  Customową Lokalizacje Chcesz Zodyfikować [goto|open|run]?"
read OPERATION
if [[ $OPERATION == "goto" ]]; then

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

echo "Jaką Nazwą Chcesz Wywoływać Lokalizacje 1, Teraz '$NAMEGOTO1'"
read NGOTO1

	sed -i 's/\("name": *"\)[^"]*/\1'"$NGOTO1"'/' "$HOME/luna/json/goto/folder_1.json"

echo "Do Jakiej Lokalizacji Ma Przenosić Nazwa $NGOTO1 Czyli Do Lokalizacji 1 Teraz '$PLACEGOTO1'?"
read PGOTO1

	sed -i 's|\("place": *"\)[^"]*|\1'"$PGOTO1"'|' "$HOME/luna/json/goto/folder_1.json"

echo "Jaką Nazwą Chcesz Wywoływać Lokalizacje 2, Teraz '$NAMEGOTO2'"
read NGOTO2

        sed -i 's/\("name": *"\)[^"]*/\1'"$NGOTO2"'/' "$HOME/luna/json/goto/folder_2.json"

echo "Do Jakiej Lokalizacji Ma Przenosić Nazwa $NGOTO2 Czyli Do Lokalizacji 2 Teraz '$PLACEGOTO2'?"
read PGOTO2

        sed -i 's|\("place": *"\)[^"]*|\1'"$PGOTO2"'|' "$HOME/luna/json/goto/folder_2.json"

echo "Jaką Nazwą Chcesz Wywoływać Lokalizacje 3, Teraz '$NAMEGOTO3'"
read NGOTO3

        sed -i 's/\("name": *"\)[^"]*/\1'"$NGOTO3"'/' "$HOME/luna/json/goto/folder_3.json"

echo "Do Jakiej Lokalizacji Ma Przenosić Nazwa $NGOTO3 Czyli Do Lokalizacji 3 Teraz '$PLACEGOTO3'?"
read PGOTO3

        sed -i 's|\("place": *"\)[^"]*|\1'"$PGOTO3"'|' "$HOME/luna/json/goto/folder_3.json"

echo "Jaką Nazwą Chcesz Wywoływać Lokalizacje 4, Teraz '$NAMEGOTO4'"
read NGOTO4

        sed -i 's/\("name": *"\)[^"]*/\1'"$NGOTO4"'/' "$HOME/luna/json/goto/folder_4.json"

echo "Do Jakiej Lokalizacji Ma Przenosić Nazwa $NGOTO4 Czyli Do Lokalizacji 4 Teraz '$PLACEGOTO4'?"
read PGOTO4

        sed -i 's|\("place": *"\)[^"]*|\1'"$PGOTO4"'|' "$HOME/luna/json/goto/folder_4.json"

echo "Jaką Nazwą Chcesz Wywoływać Lokalizacje 5, Teraz '$NAMEGOTO5'"
read NGOTO5

        sed -i 's/\("name": *"\)[^"]*/\1'"$NGOTO5"'/' "$HOME/luna/json/goto/folder_5.json"

echo "Do Jakiej Lokalizacji Ma Przenosić Nazwa $NGOTO5 Czyli Do Lokalizacji 5 Teraz '$PLACEGOTO5'?"
read PGOTO5

        sed -i 's|\("place": *"\)[^"]*|\1'"$PGOTO5"'|' "$HOME/luna/json/goto/folder_5.json"

elif [[ $OPERATION == "open" ]]; then

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

echo "Jaką Nazwą Chcesz Wywoływać Plik 1, Teraz '$NAMEOPEN1'"
read NOPEN1

        sed -i 's/\("name": *"\)[^"]*/\1'"$NOPEN1"'/' "$HOME/luna/json/open/file_1.json"

echo "W Jakiej Lokalizacji Znajduje Się Plik 1, Teraz '$PLACEOPEN1'?"
read POPEN1

        sed -i 's|\("place": *"\)[^"]*|\1'"$POPEN1"'|' "$HOME/luna/json/open/file_1.json"

echo "Jaką Komendą Otwiera Się Ten Plik, Teraz '$TYPEOPEN1'?"
read TOPEN1

	sed -i 's|\("type": *"\)[^"]*|\1'"$TOPEN1"'|' "$HOME/luna/json/open/file_1.json"

echo "Jaką Nazwą Chcesz Wywoływać Plik 2, Teraz '$NAMEOPEN2'"
read NOPEN2

        sed -i 's/\("name": *"\)[^"]*/\1'"$NOPEN2"'/' "$HOME/luna/json/open/file_2.json"

echo "W Jakiej Lokalizacji Znajduje Się Plik 2, Teraz '$PLACEOPEN2'?"
read POPEN2

        sed -i 's|\("place": *"\)[^"]*|\1'"$POPEN2"'|' "$HOME/luna/json/open/file_2.json"

echo "Jaką Komendą Otwiera Się Ten Plik, Teraz '$TYPEOPEN2'?"
read TOPEN2

        sed -i 's|\("type": *"\)[^"]*|\1'"$TOPEN2"'|' "$HOME/luna/json/open/file_2.json"

echo "Jaką Nazwą Chcesz Wywoływać Plik 3, Teraz '$NAMEOPEN3'"
read NOPEN3

        sed -i 's/\("name": *"\)[^"]*/\1'"$NOPEN3"'/' "$HOME/luna/json/open/file_3.json"

echo "W Jakiej Lokalizacji Znajduje Się Plik 3, Teraz '$PLACEOPEN3'?"
read POPEN3

        sed -i 's|\("place": *"\)[^"]*|\1'"$POPEN3"'|' "$HOME/luna/json/open/file_3.json"

echo "Jaką Komendą Otwiera Się Ten Plik, Teraz '$TYPEOPEN3'?"
read TOPEN3

        sed -i 's|\("type": *"\)[^"]*|\1'"$TOPEN3"'|' "$HOME/luna/json/open/file_3.json"

echo "Jaką Nazwą Chcesz Wywoływać Plik 4, Teraz '$NAMEOPEN4'"
read NOPEN4

        sed -i 's/\("name": *"\)[^"]*/\1'"$NOPEN4"'/' "$HOME/luna/json/open/file_4.json"

echo "W Jakiej Lokalizacji Znajduje Się Plik 4, Teraz '$PLACEOPEN4'?"
read POPEN4

        sed -i 's|\("place": *"\)[^"]*|\1'"$POPEN4"'|' "$HOME/luna/json/open/file_4.json"

echo "Jaką Komendą Otwiera Się Ten Plik, Teraz '$TYPEOPEN4'?"
read TOPEN4

        sed -i 's|\("type": *"\)[^"]*|\1'"$TOPEN4"'|' "$HOME/luna/json/open/file_4.json"

echo "Jaką Nazwą Chcesz Wywoływać Plik 5, Teraz '$NAMEOPEN5'"
read NOPEN5

        sed -i 's/\("name": *"\)[^"]*/\1'"$NOPEN5"'/' "$HOME/luna/json/open/file_5.json"

echo "W Jakiej Lokalizacji Znajduje Się Plik 5, Teraz '$PLACEOPEN5'?"
read POPEN5

        sed -i 's|\("place": *"\)[^"]*|\1'"$POPEN5"'|' "$HOME/luna/json/open/file_5.json"

echo "Jaką Komendą Otwiera Się Ten Plik, Teraz '$TYPEOPEN5'?"
read TOPEN5

        sed -i 's|\("type": *"\)[^"]*|\1'"$TOPEN5"'|' "$HOME/luna/json/open/file_5.json"

elif [[ $OPERATION == "run" ]]; then

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

echo "Jaką Nazwą Chcesz Wywoływać Plik 1, Teraz '$NAMERUN1'"
read NRUN1

        sed -i 's/\("name": *"\)[^"]*/\1'"$NRUN1"'/' "$HOME/luna/json/run/program_1.json"

echo "W Jakiej Lokalizacji Znajduje Się Plik 1, Teraz '$PLACERUN1'?"
read PRUN1

        sed -i 's|\("place": *"\)[^"]*|\1'"$PRUN1"'|' "$HOME/luna/json/run/program_1.json"

echo "Jaką Komendą Otwiera Się Ten Plik [./|. |source |], Teraz '$TYPERUN1'?"
read TRUN1

        sed -i 's|\("type": *"\)[^"]*|\1'"$TRUN1"'|' "$HOME/luna/json/run/program_1.json"

echo "Jaką Nazwą Chcesz Wywoływać Plik 2, Teraz '$NAMERUN2'"
read NRUN2

        sed -i 's/\("name": *"\)[^"]*/\1'"$NRUN2"'/' "$HOME/luna/json/run/program_2.json"

echo "W Jakiej Lokalizacji Znajduje Się Plik 2, Teraz '$PLACERUN2'?"
read PRUN2

        sed -i 's|\("place": *"\)[^"]*|\1'"$PRUN2"'|' "$HOME/luna/json/run/program_2.json"

echo "Jaką Komendą Otwiera Się Ten Plik [./|. |source |], Teraz '$TYPERUN2'?"
read TRUN2

        sed -i 's|\("type": *"\)[^"]*|\1'"$TRUN2"'|' "$HOME/luna/json/run/program_2.json"

echo "Jaką Nazwą Chcesz Wywoływać Plik 3, Teraz '$NAMERUN3'"
read NRUN3

        sed -i 's/\("name": *"\)[^"]*/\1'"$NRUN3"'/' "$HOME/luna/json/run/program_3.json"

echo "W Jakiej Lokalizacji Znajduje Się Plik 3, Teraz '$PLACERUN3'?"
read PRUN3

        sed -i 's|\("place": *"\)[^"]*|\1'"$PRUN3"'|' "$HOME/luna/json/run/program_3.json"

echo "Jaką Komendą Otwiera Się Ten Plik [./|. |source |], Teraz '$TYPERUN3'?"
read TRUN3

        sed -i 's|\("type": *"\)[^"]*|\1'"$TRUN3"'|' "$HOME/luna/json/run/program_3.json"

echo "Jaką Nazwą Chcesz Wywoływać Plik 4, Teraz '$NAMERUN4'"
read NRUN4

        sed -i 's/\("name": *"\)[^"]*/\1'"$NRUN4"'/' "$HOME/luna/json/run/program_4.json"

echo "W Jakiej Lokalizacji Znajduje Się Plik 4, Teraz '$PLACERUN4'?"
read PRUN4

        sed -i 's|\("place": *"\)[^"]*|\1'"$PRUN4"'|' "$HOME/luna/json/run/program_4.json"

echo "Jaką Komendą Otwiera Się Ten Plik [./|. |source |], Teraz '$TYPERUN4'?"
read TRUN4

        sed -i 's|\("type": *"\)[^"]*|\1'"$TRUN4"'|' "$HOME/luna/json/run/program_4.json"

echo "Jaką Nazwą Chcesz Wywoływać Plik 5, Teraz '$NAMERUN1'"
read NRUN5

        sed -i 's/\("name": *"\)[^"]*/\1'"$NRUN5"'/' "$HOME/luna/json/run/program_5.json"

echo "W Jakiej Lokalizacji Znajduje Się Plik 5, Teraz '$PLACERUN5'?"
read PRUN5

        sed -i 's|\("place": *"\)[^"]*|\1'"$PRUN5"'|' "$HOME/luna/json/run/program_5.json"

echo "Jaką Komendą Otwiera Się Ten Plik [./|. |source |], Teraz '$TYPERUN5'?"
read TRUN5

        sed -i 's|\("type": *"\)[^"]*|\1'"$TRUN5"'|' "$HOME/luna/json/run/program_5.json"

else
echo "Błędny Argument!"
exit 1

fi

echo "Chcesz Kontynułować Zmiane Customowych Lokalizacji [T|N]?"
read $CONTI

if [[ $CONTI == "T" || $CONTI == "t" ]]; then
./~/luna/confmen.sh

fi
