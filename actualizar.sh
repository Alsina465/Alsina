# Script modificado x Alejo Costa A/2024
# /etc/ocsinventory/ocsinventory-agent.cfg
#server=http://10.17.7.47/ocsinventory
date >/alsina/Actualizacion.log

sudo ocsinventory-agent
echo "Ocs activado" >>/alsina/Actualizacion.log

sudo apt-get install aptitude -y
notify-send "iniciando actualizaciones" -t 200 -i /alsina/sistemas.png

sleep 120
sudo chmod +x /alsina/*.sh
ifconfig | grep "inet 10" |uniq | cut -c 14-23  >>/alsina/Actualizacion.log
cat /etc/hostname                  >>/alsina/Actualizacion.log
cat /etc/issue | cut -c 1-16       >>/alsina/Actualizacion.log


# Actualiza los paquetes del sistema
DEBIAN_FRONTEND=noninteractive apt-get upgrade -qq -y -u --allow-remove-essential --allow-change-held-packages --allow-change-held-packages --allow-unauthenticated --allow-downgrades -o Dpkg::Options::="--force-confdef" 
    
# Elimina los paquetes que ya no son necesarios
DEBIAN_FRONTEND=noninteractive apt-get autoremove -qq -y --allow-remove-essential --allow-change-held-packages --allow-change-held-packages --allow-unauthenticated --allow-downgrades

sudo add-apt-repository universe -y >>/alsina/Actualizacion.log
sudo fuser -k   /var/lib/dpkg/lock  >>/alsina/Actualizacion.log
sudo apt --fix-broken install -y    >>/alsina/Actualizacion.log
sudo apt-get -f install             >>/alsina/Actualizacion.log
sudo dpkg --configure -a            >>/alsina/Actualizacion.log
sudo apt-get update -y              >>/alsina/Actualizacion.log
sudo apt dist-upgrade -y -f         >>/alsina/Actualizacion.log
sudo apt-get upgrade -y             >>/alsina/Actualizacion.log
sudo apt-get autoremove -y          >>/alsina/Actualizacion.log
sudo apt-get clean -y               >>/alsina/Actualizacion.log
sudo apt-get autoclean -y           >>/alsina/Actualizacion.log
sudo apt full-upgrade -y            >>/alsina/Actualizacion.log
sudo aptitude safe-upgrade -y       >>/alsina/Actualizacion.log


notify-send  "Su pc acaba de ser actualizada" -t 20000    -i /alsina/sistemas.png 
date >>/alsina/Actualizacion.log


#sudo nano /etc/crontab
#59 12    * * *   root /home/sistemas/actualizar.sh


