 #!/bin/bash
# Script modificado x Alejo Costa 05/2024
clear
if [ $(id -u) -eq 0 ]; then
echo "Hostname Actual:" 
cat /etc/hostname
	echo ""
	echo ""
	read -p "Nombre de Usuario : " username
	read -p "Programa o Area : " programa
	echo ""

	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username existe!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $username)
		useradd -m -p $pass $username
		[ $? -eq 0 ]
			cp -Rfa /home/sistemas/\. /home/$username/ 
			chown -R $username /home/$username/               
   			echo "Usuario añadido con exito!" 
newhost="cen-""$programa""-""$username"
echo ""
echo $newhost
                 	echo ""
                	echo ""
			hostname $newhost 
			echo $newhost > /etc/hostname 
			echo "DrivePathC=/home/$username/Escritorio/" >> /home/$username/.ICAClient/wfclient.ini || echo "Usuario no añadido al sistema, ERROR!"
			echo "
127.0.0.1       localhost
127.0.1.1       $newhost" > /etc/hosts
	fi
else
	echo "Solo root puede añadir usuarios"
	exit 2
fi
