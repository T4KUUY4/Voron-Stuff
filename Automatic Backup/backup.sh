#!/bin/bash
# Takuya´s Backup Script for Auto Backup
# On Every reboot, selected files will be automatically backuped into timestamped folders.

###############
## EDIT ZONE ##
###############

#Replace "pi" if you have a different user. "pi" is standard in most installations.
USERNAME="pi" 

# Set to 1 to enable
# Set to 0 to disable

#Klipper Config (default on)
CONFIG=1

#Klipper
KLIPPER=0

#Extras (ERCF Scripts, etc. )
EXTRAS=0

#LOGS
LOGS=0

#Moonraker and Env
MOONRAKER=0

#G-Code Files. Warning: Will take up a lot of space over time
GCODES=0

###############
## DON'T EDIT ZONE ##
###############


CURRENTDATE=$(date)
MNTPATH=/mnt/backup/$CURRENTDATE 

if [ $CONFIG = 1 ]
then
  cp -r /home/$USERNAME/klipper_config "$MNTPATH"
fi

if [ $KLIPPER = 1 ]
then
  cp -r /home/$USERNAME/klipper "$MNTPATH"
fi

if [ $EXTRAS = 1 ]
then
  cp -r /home/$USERNAME/klipper/klippy/extas "$MNTPATH"
fi

if [ $LOGS = 1 ]
then
  cp -r /home/$USERNAME/klipper_logs "$MNTPATH"

fi

if [ $MOONRAKER = 1 ]
then
  cp -r /home/$USERNAME/moon* "$MNTPATH"

fi

if [ $GCODES = 1 ]
then
  cp -r /home/$USERNAME/gcode_files "$MNTPATH"

fi


#Made by Takuya#0523 ;)
