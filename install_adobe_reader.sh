#!/bin/bash
# Script para instalar acrobe reader en Ubuntu 22.04/24.04

#Colores
redColor="\e[0;31m\033[1m"
yellowColor="\e[0;33m\033[1m"
endColor="\033[0m\e[0m"

URL_DEB="ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb"

trap ctrl_c INT
function ctrl_c(){
        echo -e "\n${redColour}Programa Terminado ${endColour}"
    exit 0
}

trap "rm ~/adobe.deb" EXIT

echo -e "${yellowColor}Descargando el programa ${endColor}"
wget -q --show-progress --progress=bar:force 2>&1 -O ~/adobe.deb "$URL_DEB"

if [ $(uname -p) == x86_64 ]; then
    echo -e "${yellowColor}Agregando arquitectura de 32 bits ${endColor}"
    sudo dpkg --add-architecture i386 && sudo apt-get -qq update

    echo -e "${yellowColor}Instalando dependencias de 32 bits ${endColor}"
    sudo apt-get install -y libxml2:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libatk-adaptor:i386 -qq >/dev/null 

    echo -e "${yellowColor}Instalando el programa ${endColor}"
    sudo dpkg -i ~/adobe.deb && sudo apt-get -f  install -y -qq >/dev/null
else
    echo -e "${yellowColor}Instalando el programa en equipo de 32 bits ${endColor}"
    sudo dpkg -i ~/adobe.deb
fi
