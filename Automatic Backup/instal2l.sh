ECHO "Takuyas Auto Backup Installer"
cd /home/$USER/ 
sudo wget https://raw.githubusercontent.com/T4KUUY4/Voron-Stuff/main/Automatic%20Backup/backup.sh
sudo chmod +x /home/$USER/backup.sh
sudo mkdir /home/$USER/.smbcreds
sudo mkdir /mnt/backup

read -p "Enter FULL shared folder path. Example: \\192.168.1.7\PrinterBackups\V2: " fullpath
echo "$fullpath /mnt/backup cifs users,credentials=/home/$USER/.smb,uid=1000,gid=1000,vers=2.0 0 0" | sudo tee -a /etc/fstab

read -p "Enter newly created username for shared folder: " shareduser
read -p "Enter password for newly created use for shared folder: " sharedpass

echo "user=$shareduser" | sudo tee -a /home/$USER/.sbmcreds
echo "password=$sharedpass" | sudo tee -a /home/$USER/.smbcreds

echo "bash /home/$USER/backup.sh" | sudo tee -a /etc/rc.local



