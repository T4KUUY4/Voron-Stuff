ECHO "Takuyas Auto Backup Installer"
cd /home/$USER/ 
sudo wget https://raw.githubusercontent.com/T4KUUY4/Voron-Stuff/main/Automatic%20Backup/backup.sh
sudo chmod +x /home/$USER/backup.sh
sudo touch /home/$USER/.smbcreds
sudo mkdir /mnt/backup

read -p "Enter FULL shared folder path. Example: \\192.168.1.7\PrinterBackups\V2: " -r fullpath
echo "$fullpath /mnt/backup cifs users,credentials=/home/$USER/.smbcreds,uid=1000,gid=1000,vers=2.0 0 0" | sudo tee -a /etc/fstab

read -p "Enter newly created username for shared folder: " -r shareduser
read -p "Enter password for newly created use for shared folder: " -r sharedpass

echo "user=$shareduser" | sudo tee -a /home/$USER/.smbcreds
echo "password=$sharedpass" | sudo tee -a /home/$USER/.smbcreds

echo "sudo bash /home/$USER/backup.sh" | sudo tee -a /etc/rc.local
clear

read -p "Enable Klipper Backup? (yes/no): " klipp
read -p "Enable Moonraker History (print stats)? (yes/no): " hist
read -p "Enable Extras Backup (.py Scripts/ Ercf...) (yes/no): " extr
read -p "Enable Log Backup (yes/no): " log
read -p "Enable Moonraker Backup (yes/no): " moonrake
read -p "Enable G-Code File Backup. Warning: Will take up more space over time (yes/no): " gcod

sed -i "s/KLIPPER='no'/KLIPPER='$klipp'/" /home/$USER/backup.sh
sed -i "s/HISTORY='no'/HISTORY='$hist'/" /home/$USER/backup.sh
sed -i "s/EXTRAS='no'/EXTRAS='$extr'/" /home/$USER/backup.sh
sed -i "s/LOGS='no'/LOGS='$log'/" /home/$USER/backup.sh
sed -i "s/MOONRAKER='no'/MOONRAKER='$moonrake'/" /home/$USER/backup.sh
sed -i "s/GCODE='no'/GCODE='$gcod'/" 


echo "####################################"
echo "## Thank you for using my script, ##"
echo "## Takuya ;)                      ##"
echo "####################################"


