#!/bin/bash
OUTPUT="/tmp/input.txt"
#Dibujar interfaz
interfaz(){
	dialog --title "¿Que quiere hacer?" \
	 --backtitle "Parseador de CSV a LDIF" \
	 --menu "Elige una opcion: " 0 0 0 \
		1 "Creacion de archio LDIF" \
		2 "Indicar la extension del dominio" \
		3 "Indicar el nombre del administrador LDAP" \
		4 "Salir"
	respose=$?
}
interfaz
case $respose in
	0)
		dialog --title "¿Que quiere crear?" \
			--menu "Elige una de las siguientes opciones: " 0 0 0 \
				1 "Crear Unidad Organizativa" \
				2 "Crear Usuario" \
				3 "Crear Grupo" \
				4 "Atras"
		response2=$?
		case $response2 in
			0)
				dialog --title "Escribe el nombre de la unidad organizativa: "
					--inputbox "Escribe el nombre de la UO: " 8 60 2>$OUTPUT
				;;
		esac
		;;
	1)
		dialog --title "Extension del dominio" \
			--inputbox "Escribe la extensio del dominio: " 8 60 2>$OUTPUT
		exit
		;;
esac
