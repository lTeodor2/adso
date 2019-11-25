#!/bin/bash
while :
do
	echo "Rellena la frase"
	echo "1) UUID"
	echo "2) DC"
	echo "3) Extencion DC"
	echo "4) Salir y ver como ha quedado"
	read -p "Elige 1 o 4: " loqueeligeeluser
	case $loqueeligeeluser in #Empieza caja
		1)
			read -p "Escribe el nombre: " nom
			;;
		2)
			read -p "Escribe el nombre de dominio sin extension: " dc
			;;
		3)
			read -p "Escribe la extenion: " dc2
			;;
		4)
			echo "Has salido, comprobemos como ha quedado: "
			if [ -f texto.txt]
			then
				read -p "Que quieres hacer con el archivo: "
			exit 0
			;;
		*)
			echo "Error: eso ni es 1 no es 4, vuelvo a preguntar"
			;;
	esac    #Fin caja
done
echo "Si ves este mensaje algo a ido mal."
