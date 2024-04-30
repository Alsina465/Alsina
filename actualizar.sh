# Script modificado x Alejo Costa 05/2024

sleep 120
sudo chmod +x /alsina/*.sh
ifconfig | grep "inet 10" |uniq | cut -c 14-23  >/alsina/Log.txt
cat /etc/hostname  >>/alsina/Log.txt
cat /etc/issue | cut -c 1-16  >>/alsina/Log.txt

sudo fuser -k   /var/lib/dpkg/lock >>/alsina/Log.txt
sudo apt --fix-broken install -y
sudo apt-get -f install  >>/alsina/Log.txt
sudo dpkg --configure -a  >>/alsina/Log.txt
sudo apt-get update -y  >>/alsina/Log.txt
sudo apt dist-upgrade -y -f >>/alsina/Log.txt
sudo apt-get upgrade -y >>/alsina/Log.txt
sudo apt-get autoremove -y >>/alsina/Log.txt
sudo apt-get clean -y >>/alsina/Log.txt
sudo apt-get autoclean -y >>/alsina/Log.txt
sudo apt full-upgrade -y >>/alsina/Log.txt

notify-send  "Su pc acaba de ser actualizada" -t 20000    -i /alsina/sistemas.png 
date >>/alsina/Log.txt


#sudo nano /etc/crontab
#59 12    * * *   root /home/sistemas/actualizar.sh


