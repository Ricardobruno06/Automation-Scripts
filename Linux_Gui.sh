#!/bin/bash

#script para instalar pacotes uteis.

DESTDIR=${DESTDIR:-$(pwd)}


verificaYAD(){
	programa=$(which yad)
	if [ "$programa" != "/usr/bin/yad" ];then
		apt-get install yad
	else
		yad --text=" YAD ja instalado. Clique em OK " --width="90" --height="70"
	fi
}

main(){

	opcao=$(\
        yad --entry \
        --entry-label="Item" \
        --completion \
        --editable \
		--width="350" \
		--height="400" \
		--text="
	1 - Atualizar sistema
	2 - Atom
	3 - Chrome
	4 - Dropbox
	5 - Opera
	6 - Spotify
	7 - Telegram
	8 - Virtualbox
	9 - Vim
	10 - VLC
	11 - Whatsapp
	12 - Instalar tudo
	13 - Cancelar
"
)
	tratativa
	escolhas "$opcao"
}


tratativa(){
	while [ $opcao -le 0 -o $opcao -ge 14 ]
	do
		main
	done
}


escolhas(){
	case $1 in
	
		"1")
			opcao_1
		;;

		"2")
			opcao_2
		;;

		"3")
			opcao_3
		;;

		"4")
			opcao_4
		;;
		
		"5")
			opcao_5
		;;

		"6")
			opcao_6
		;;

		"7")
			opcao_7
		;;

		"8")
			opcao_8
		;;

		"9")
			opcao_9
		;;

		"10")
			opcao_10
		;;

		"11")
			opcao_11
		;;
		
		"12")
			opcao_12
		;;

		"13")
			clear
			echo -n Voce realmente deseja sair? [y/n] ; read opcao
			while [ $opcao != "y" ] && [ $opcao != "n" ]
			do
				clear
				echo -n Voce realmente deseja sair? [Y/n] ; read opcao
			done
				if [ $opcao = "n" ]
				then
					main
				elif [ $opcao = "y" ]
				then
					exit
				fi
		;;
	esac
}

opcao_1(){
	clear
	apt-get update
	apt-get upgrade -f -y
	if [ $1 -eq 1 ];then
		echo "Iniciando proxima instalacao"
		opcao_2 1
	else
		main
	fi
}

opcao_2(){	
	echo Baixando e instalando Atom!
	wget https://atom.io/download/deb -O "${DESTDIR}"/atom
	dpkg -i atom
	clear
	echo Instalacao concluida!
	if [ $1 -eq 1 ];then
		echo "Iniciando proxima instalacao"
		opcao_3 1
	else
		main
	fi
}

opcao_3(){	
	echo Baixando e instalando Chrome
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O "${DESTDIR}"/chrome
	dpkg -i chrome
	clear
	echo Instalacao concluida!
	if [ $1 -eq 1 ];then
		echo "Iniciando proxima instalacao"
		opcao_4 1
	else
		main
	fi
}

opcao_4(){
	echo Baixando e instalando Dropbox
	wget https://www.dropbox.com/download?dl=packages/debian/dropbox_2015.10.28_amd64.deb -O "${DESTDIR}"/dropbox
	dpkg -i dropbox
	clear
	echo Instalacao concluida!
	if [ $1 -eq 1 ];then
		echo "Iniciando proxima instalacao"
		opcao_5 1
	else
		main
	fi
}

opcao_5(){
	echo Baixando e instalando Opera
	apt-get install apt-transport-https
	wget http://deb.opera.com/opera/pool/non-free/o/opera-stable/opera-stable_43.0.2442.806_amd64.deb -O "${DESTDIR}"/opera
	dpkg -i opera
	apt-get install -f -y
	clear
	echo Instalacao concluida!
	if [ $1 -eq 1 ];then
		echo "Iniciando proxima instalacao"
		opcao_6 1
	else
		main
	fi
}

opcao_6(){
	echo Baixando e instalando Spotify
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
	echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
	apt-get update
	apt-get install -f -y spotify-client
	clear
	echo Instalacao concluida!
	if [ $1 -eq 1 ];then
		echo "Iniciando proxima instalacao"
		opcao_7 1
	else
		main
	fi
}

opcao_7(){
	echo Baixando e instalando Telegram
	wget https://telegram.org/dl/desktop/linux -O "${DESTDIR}"/telegram
	tar xvf telegram
	cd Telegram
	chmod +x Telegram
	./Telegram
	clear
	echo Instalacao concluida!
	if [ $1 -eq 1 ];then
		echo "Iniciando proxima instalacao"
		opcao_8 1
	else
		main
	fi
}

opcao_8(){
	echo Baixando e instalando virtualbox
	wget download.virtualbox.org/virtualbox/5.1.14/virtualbox-5.1_5.1.14-112924~Debian~jessie_amd64.deb -O "${DESTDIR}"/virtualbox
	dpkg -i virtualbox
	clear
	echo Instalacao concluida!
	if [ $1 -eq 1 ];then
		echo "Iniciando proxima instalacao"
		opcao_9 1
	else
		main
	fi

}

opcao_9(){
	echo Baixando e instalando Vim
	apt-get install vim -f -y #Instalacoes sendo forcada para evitar erros
	clear
	echo Instalacao concluida!
	if [ $1 -eq 1 ];then
		echo "Iniciando proxima instalacao"
		opcao_10 1
	else
		main
	fi

}

opcao_10(){
	echo Baixando e instalando VLC
	apt-get install vlc -f -y
	clear
	echo Instalacao concluida!
	if [ $1 -eq 1 ];then
		echo "Iniciando proxima instalacao"
		opcao_11 1
	else
		main
	fi
}

opcao_11(){
	echo Baixando e instalando Whatsapp
	wget "https://etecspgov-my.sharepoint.com/personal/weslei_pinto_etec_sp_gov_br/_layouts/15/guestaccess.aspx?docid=19ed46acea92b4954b9ad85ca31b04b41&authkey=AYA1XB8vdIevrDSE-SO0m-I" -O "${DESTDIR}"/whatsie
	dpkg -i whatsie
	apt-get install -f -y
	clear
	echo Instalacao concluida!
	if [ $1 -eq 1 ];then
		echo "Instalacoes concluidas"
	else
		main
	fi

}	

opcao_12(){

	opcao_1 1
	echo -n Voce deseja ficar com os pacotes em sua maquina? [y/n] ; read opcao
	while [ $opcao != "y" ] && [ $opcao != "n" ]
		do
			clear
			echo -n Os pacotes podem ser removidos? [y/n] ; read opcao
		done
			if [ $opcao = "y" ]
			then
				rm "${DESTDIR}"/atom; rm "${DESTDIR}"/chrome; rm "${DESTDIR}"/dropbox; rm "${DESTDIR}"/opera; rm "${DESTDIR}"/telegram; rm "${DESTDIR}"/virtualbox; rm "${DESTDIR}"/whatsie
			elif [ $opcao = "n" ]
			then
				exit
			fi
}

ROT=$(id -u)

if [ "$ROT" == "0" ];then
		verificaYAD
		main
	else
		echo "HEY!Acesso apenas para root"
		exit
	fi