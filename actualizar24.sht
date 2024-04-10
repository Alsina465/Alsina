#sudo su
#crontab -e


#cambia la foto de perfil
wget -O /home/sistemas/.face   http://10.17.7.47/Mega/alsina/Iconos/face.png
#cambia la foto del boton



mkdir /alsina
cd /alsina
wget  /alsina 10.17.7.47/Mega/alsina/raiz/raiz.zip

unzip -o /temp/raiz.zip  -d /alsina
chmod +x /alsina/*.sh
cd /home/sistemas
wget  /home/sistemas 10.17.7.47/Mega/alsina/raiz/crearusuario.sh
chmod +x *.sh




#cd  /usr/share/xfce4/backdrops
cd /usr/share/xfce4/backdrops
rm *.*

wget /usr/share/xfce4/backdrops 10.17.7.47/Mega/alsina/backdrops/001.jpg
wget /usr/share/xfce4/backdrops 10.17.7.47/Mega/alsina/backdrops/002.jpg
wget /usr/share/xfce4/backdrops 10.17.7.47/Mega/alsina/backdrops/003.jpg


cd /alsina
wget  /alsina 10.17.7.47/Mega/alsina/raiz/Panel
cp /alsina/Panel /etc/conky/conky.conf

sudo apt-get   install -y   conky-all

#nano /etc/crontab
echo "* * * * 1 root /alsina/auto.sh"      >> /etc/crontab
echo "@reboot root /alsina/voucher.sh"     >> /etc/crontab
echo "@reboot root /alsina/conky.sh"         >> /etc/crontab

echo "@reboot root /alsina/actualizar.sh"  >> /etc/crontab








#AGREGA HARDWARE A LA CONSOLA

sudo echo "/alsina/cpu.sh " >>   /root/.bashrc
sudo echo "neofetch" >>   /home/sistemas/.bashrc
sudo echo "PrintLastLog no " >>    /etc/ssh/sshd_config


#CAMBIA LA VISTA DE LS
echo "export HISTTIMEFORMAT='%F %T : '" >> /home/sistemas/.bashrc
echo "export HISTTIMEFORMAT='%F %T : '" >> /root/.bashrc
#sudo echo " notify-send "Acceso ROOT Concedido" -t 20000    -i /home/sistemas/Escritorio# /home/sistemas/Imágenes/Iconos/icono\ sistemas2.png 


#BORRA EL HiSTORIAL
echo " " >/home/sistemas/.bash_history 
echo " " >/root/.bash_history

#cups remoto

 cupsctl --remote-admin --remote-any --share-printers
# Restrict access to the admin pages...
#<Location /admin>
#  Order allow,deny
#  Allow all
#</Location>

# Restrict access to configuration files...
#<Location /admin/conf>
#  AuthType Default
#  Require user @SYSTEM
#  Order allow,deny
#</Location>




sudo apt-get   install -y  cheese vlc gimp zoom smbclient samba openssh-server    okular  kazam nautilus soundconverter kdenlive audacity parlatype net-tools neofetch  conky-all

#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb
