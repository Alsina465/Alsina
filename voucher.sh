#!/bin/bash
# Script modificado x Alejo Costa 05/2024
# sudo chmod u+s /home/sistemas/Script -R
# sudo chmod 777 /home/sistemas/Script -R
sleep 60
rm /alsina/Noti*.*
cd /alsina
wget  "http://10.17.7.47/Mega/Notificaciones/Notilinux.txt"
notify-send "$(cat /alsina/Notilinux.txt)" -t 20000    -i /alsina/sistemas.png 

