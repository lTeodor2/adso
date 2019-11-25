#Condicionales sh ./condiciones.sh 400
#!/bin/bash
if [ $1 -gt 400 ]
then
	echo "es un numero grande."
else
	echo "es un numero pequeño."
fi
exit 0
