#!/bin/bash
while :
do
	echo "Si pulsas 1 sigo"
	echo "Si puelsas 3 paro"
	read -p "Elige 1 o 3: " loqueeligeeluser
	case $loqueeligeeluser in #Empieza caja
		1)
			echo "Has elegido 1, vuelvo a preguntar"
			;;
		3)
			echo "Has elegido 3, apaga y vamonos"
			exit 0
			;;
		*)
			echo "Error: eso ni es 1 no es 4, vuelvo a preguntar"
			;;
	esac    #Fin caja
done
echo "Si ves este mensaje algo a ido mal."
