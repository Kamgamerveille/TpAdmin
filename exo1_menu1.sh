#!/bin/sh

clear
echo "********************************************************************************"
echo "********************************************************************************"
echo "**********************Bienvenue sur mon projet Sys *****************************"
echo "**                                                                            **"
echo "**    1 - Informations sur les utilisateurs enregistrés il y'a 3 jours        **"
echo "**                                                                            **"
echo "**       2 - Acquisition et installation de l'environnement XAMPP             **"
echo "**                                                                            **"
echo "**   3 - Archivage des éléments du repertoire personnel qui ont été modifié   ** \n**       par l'utilisateur sudoers il ya 2 jours dans un periphérique externe **"
echo "**                                                                            **"
echo "**       4 - Information sur l'utilisateur du disque de la mémoire du         **\n**           procesus et de la swap                                           **"
echo "**                                                                            **"
echo "**   5 - Quitter                                                              **"
echo "**                                                                            **"
echo "********************************************************************************"
echo "********************************************************************************"
echo " "
read choix

echo " "

if [ "$choix" = "1" ]; then

    echo "Informations sur les utilisateurs enregistrés il y'a 3 jours : "
echo "-"$i " Consulté la dernière fois le "$g $f " à "$h
	read -p "Entrez le jour de la date il y'a trois jours : " genre
	#grep genre who >> ok
	#nano ok
#last -n 15| find -mtime +2 
	 #last -n 15| cut -c 48-50 | grep $genre >> ok.txt
	#	nano ok.txt

nano ok
grep $genre personnes > ok

    exit 

    elif [ "$choix" = "2" ]; then

       wget https://www.apachefriends.org/xampp-files/5.6.30/xampp-win32-5.6.30-1-VC11-installer.exe
	apt-get install ia32-libs
	tar xvfz xampp-linux-*.tar.gz -C /opt
	/opt/lampp/lampp start     
          exit

    elif [ "$choix" = "3" ]; then

      		echo " Debut de l'archivage du repertoire /home "
echo " "
tar cvzf home.tar.gz  /home  -C  /media/$USER/MBC
echo " "
echo " Fin de l'archivage du repertoire /home "
          exit

       elif [ "$choix" = "4" ]; then
		top 
          exit

          elif [ "$choix" = "5" ]; then

             echo "Ok, bye! "
             exit
             else
                echo "$choix n'est pas vallide il faut taper un chiffre entre 1 et 5"
exit 1

fi
