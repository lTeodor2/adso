#!/bin/bash
OUTPUT="/tmp/input.txt"
#Dibujar interfaz
let a
dominio(){
	dialog --title "Dominio a la cual quieres aplicar la configuracion " \
			--inputbox "Escribe el nombre de tu dominio: " 8 60 2>$OUTPUT
	dn=$(cat $OUTPUT)
}
extension(){
	dialog --title "Dominio a la cual quieres aplicar la configuracion "  \
		--inputbox "Escribe la extension del dominio: " 8 60 2>$OUTPUT
	dc=$(cat $OUTPUT)
}
administrador(){
	dialog --title "Dominio a la cual quieres aplicar la configuracion "  \
		--inputbox "Escribe el nombre del administrador: " 8 60 2>$OUTPUT
	admin=$(cat $OUTPUT)
}
interfaz1(){
	dialog --title "¿Que quiere hacer? $dn $dc $admin" \
	 --backtitle "Parseador de CSV a LDIF" \
	 --menu "Elige una opcion: " 0 0 0 \
		1 "Creacion de archio LDIF" \
		2 "Indicar la extension del dominio" \
		3 "Importar archivo CSV" \
		4 "Salir" 2> /tmp/dile
	a=$(cat /tmp/dile)
}
opcion1(){
	respose=$?
	case $a in
	1)
		dialog --title "¿Que quiere crear?" \
			--menu "Elige una de las siguientes opciones: " 0 0 0 \
				1 "Crear Unidad Organizativa" \
				2 "Crear Usuario" \
				3 "Crear Grupo" \
				4 "Atras" 2> /tmp/dile
		;;
	2)
		dialog --title "Extension del dominio" \
			--inputbox "Escribe la extensio del dominio: " 8 60 2>$OUTPUT
		exit 0
		;;
	esac
	a=$(cat /tmp/dile)
}
creacion(){
	respose=$?
	case $a in
	1)
		dialog --title "Creacion de Unidad Organizativa" \
			--inputbox "Escribe el nombre que quieres darle a la Unidad Organizativa: " 8 60 2>$OUTPUT
		ou=$(cat $OUTPUT)
		exit 0
		;;
	2)
		dialog --title "Creacion de Usuario" \
			--inputbox "Escribe un nombre para el Usuario: " 8 60 2>$OUTPUT
		uid=$(cat $OUTPUT)
		exit 0
		;;
	3)
		dialog --title "Generar archivo con la configuracion"
			echo dn: ou=$ou,dc=$dn,dc=$dc >> prueba.txt
			echo objectClass: organizationalUnit >> prueba.txt
			echo ou: $ou >> prueba.txt
			
		exit 0
		;;
	4)
		exit 0
		;;
	esac
	a=$(cat /tmp/dile)
}
while true
do
dominio
extension
administrador
interfaz1
opcion1
creacion
done
