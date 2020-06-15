#!/bin/bash
#comprova si s'executa com a root
if (( EUID !=0 ))
then
	echo"aquest script s'ha d'executar amb privilegis de l'usuari root"
	exit 1
fi
clear
opc="s"
while [[ $opc == "s" ]]
do
	clear
	echo -n "indica el nom de l'usuari:"
	read usuari
	echo -n "Estas segur que vols borrar l'usuari i el seu directori?"
	read resposta
	if [[ $resposta == "s" ]]
	then
		userdel -r $usuari 2> /dev/null
	fi
	echo -n "Vols continuar";
	read opc

done
exit 1
