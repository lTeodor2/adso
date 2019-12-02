#!/bin/bash
OUTPUT="/tmp/input.txt"
dialog --title "El nombre del admin" \
--backtitle "Parseador de CSV a LDIF" \
--inputbox "Indica el nombre del Admin LDAP" 8 60 2>$OUTPUT
response=$?
name=$(<$OUTPUT)

echo $name

rm /tmp/input.txt
