#!/bin/bash
while :
do
	echo "Rellena la frase"
	echo "1) UUID"
	echo "2) DC"
	echo "3) Extencion DC"
	echo "4) Salir y ver como ha quedado"
	if [ -F texto.txt]
	then
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
				echo $nom" -> "$dc"."$dc2
				exit 0
				;;
			*)
				echo "Error: eso ni es 1 no es 4, vuelvo a preguntar"
				;;
		esac    #Fin caja
	else
		echo "El archivo ya existe."
		echo "1) Borrar"
		echo "2) Mantener"
		read -p "¿Que quieres hacer con el?" borrar
		case $borrar in
			1)
				echo "Archivo borrado."
				rm texto.txt
				exit 0
				;;
			2)
				echo "Mantener archivo."
				exit 0
				;;
	fi
done
echo "Si ves este mensaje algo a ido mal."
