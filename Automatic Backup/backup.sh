# Takuya´s Backup Script for Auto Backup
# On Every reboot, selected files will be automatically backuped into timestamped folders.



#Replace "pi" if you have a different user. "pi" is standard in most installations.
USERNAME="pi" 
CURRENTDATE=`date` #DONT EDIT
MNTPATH=/mnt/backup/$CURRENTDATE #DONT EDIT

###############
## EDIT ZONE ##
###############

# Uncomment by removing # for every backup you want to create. klipper_config is on by default

# Klipper config
cp -r /home/$USERNAME/klipper_config $MNTPATH 

# Klipper (includes all scripts)
#cp -r /home/$USERNAME/klipper $MNTPATH

# Klipper Extras (ERCF Scripts, etc..)

#cp -r /home/$USERNAME/klipper/klippy/extas $MNTPATH

# Klipper logs
#cp -r /home/$USERNAME/klipper_logs $MNTPATH


# Moonraker and Moonraker-env
#cp -r /home/$USERNAME/moon* $MNTPATH

# Gcode Files. Warning, this might take up a lot of space. 
#cp -r /home/$USERNAME/gcode_files $MNTPATH

#Made by Takuya#0523 ;)
