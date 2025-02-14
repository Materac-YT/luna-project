
#!/bin/bash

if [[ $1 == "run" ]]; then

	if [[ $2 == "installer" ]]; then

	SKRYPT_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

	echo "Przygotowywanie Katalogów Instalacji..."
	cd ~
	mkdir luna
	cd luna
	rm luna.sh
	rm conf.sh
	rm confmen.sh
	mkdir json
	cd json
	mkdir goto
	mkdir run
	mkdir open
	echo "Gotowe..."

	echo "Kopiowanie Plików..."
	cd $SKRYPT_DIR/luna
	chmod +x luna.sh
	chmod +x conf.sh
	chmod +x confmen.sh
	cd /
	cp $SKRYPT_DIR/luna/luna.sh ~/luna/luna.sh
	cp $SKRYPT_DIR/luna/conf.sh ~/luna/conf.sh
	cp $SKRYPT_DIR/luna/confmen.sh ~/luna/confmen.sh
	cp $SKRYPT_DIR/luna/luna.json ~/luna/luna.json
	cp $SKRYPT_DIR/luna/app.json ~/luna/app.json
	cp $SKRYPT_DIR/luna/json/goto/folder.json ~/luna/json/goto/folder_1.json
	cp $SKRYPT_DIR/luna/json/goto/folder.json ~/luna/json/goto/folder_2.json
	cp $SKRYPT_DIR/luna/json/goto/folder.json ~/luna/json/goto/folder_3.json
	cp $SKRYPT_DIR/luna/json/goto/folder.json ~/luna/json/goto/folder_4.json
	cp $SKRYPT_DIR/luna/json/goto/folder.json ~/luna/json/goto/folder_5.json
	cp $SKRYPT_DIR/luna/json/open/file.json ~/luna/json/open/file_1.json
	cp $SKRYPT_DIR/luna/json/open/file.json ~/luna/json/open/file_2.json
	cp $SKRYPT_DIR/luna/json/open/file.json ~/luna/json/open/file_3.json
	cp $SKRYPT_DIR/luna/json/open/file.json ~/luna/json/open/file_4.json
	cp $SKRYPT_DIR/luna/json/open/file.json ~/luna/json/open/file_5.json
	cp $SKRYPT_DIR/luna/json/run/program.json ~/luna/json/run/program_1.json
	cp $SKRYPT_DIR/luna/json/run/program.json ~/luna/json/run/program_2.json
	cp $SKRYPT_DIR/luna/json/run/program.json ~/luna/json/run/program_3.json
	cp $SKRYPT_DIR/luna/json/run/program.json ~/luna/json/run/program_4.json
	cp $SKRYPT_DIR/luna/json/run/program.json ~/luna/json/run/program_5.json
	echo "Zrobione..."

	echo "Czy Masz Zainstalowane Na Tym Komputerze apt [T/N]?"
	read APTTN
		if [[ $APTTN == "t" || $APTTN == "T" ]]; then
		APT="true"

		elif [[ $APTTN == "n" || $APTTN == "N" ]]; then
		APT="false"

		fi

		sed -i 's/\("apt": *"\)[^"]*/\1'"$APT"'/' "$HOME/luna/app.json"

        echo "Czy Masz Zainstalowane Na Tym Komputerze snap [T/N]?"
        read SNAPTN
                if [[ $SNAPTN == "t" || $SNAPTN == "T" ]]; then
                SNAP="true"

                elif [[ $SNAPTN == "n" || $SNAPTN == "N" ]]; then
                SNAP="false"

                fi

                sed -i 's/\("snap": *"\)[^"]*/\1'"$SNAP"'/' "$HOME/luna/app.json"

        echo "Czy Masz Zainstalowane Na Tym Komputerze flatpak [T/N]?"
        read FLATPAKTN
                if [[ $FLATPAKTN == "t" || $FLATPAKTN == "T" ]]; then
                FLATPAK="true"

                elif [[ $FLATPAKTN == "n" || $FLATPAKTN == "N" ]]; then
                FLATPAK="false"

                fi

                sed -i 's/\("flatpak": *"\)[^"]*/\1'"$FLATPAK"'/' "$HOME/luna/app.json"

        echo "Jak Się Ma Zwracać Do Ciebie Luna?"
        read NAME

                sed -i 's/\("name_user": *"\)[^"]*/\1'"$NAME"'/' "$HOME/luna/luna.json"


	echo 'alias luna="source ~/luna/luna.sh"' >> ~/.bashrc
	source ~/.bashrc


	else

	echo "Użycie: ./luna-installer.sh run installer"

	fi

else
echo "Użycie: ./luna-installer.sh run installer"

fi
