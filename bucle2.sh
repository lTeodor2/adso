#!/bin/bash
OUTPUT="/tmp/input.txt"
#Dibujar interfaz
interfaz(){
	dialog --title "¿Que quiere hacer?" \
	 --backtitle "Parseador de CSV a LDIF" \
	 --menu "Elige una opcion: " 0 0 0 \
		1 "Indicar nombre dominio" \
		2 "Indicar la extension del dominio" \
		3 "Indicar el nombre del administrador LDAP" \
		4 "Salir"
	respose=$?
}
interfaz
case $respose in
	0)
		dialog --title "Nombre de dominio" \
			--inputbox "Escribe el nombre del dominio(sin extension)" 8 60 2>$OUTPUT
		;;
	1)
		dialog --title "Extension del dominio" \
			--inputbox "Escribe la extensio del dominio: " 8 60 2>$OUTPUT
		exit
		;;
esac
