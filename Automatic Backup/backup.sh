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
CONFIG="yes"

#Klipper
KLIPPER="no"

#Extras (ERCF Scripts, etc. )
EXTRAS="no"

#LOGS
LOGS="no"

#Moonraker and Env
MOONRAKER="no"

#G-Code Files. Warning: Will take up a lot of space over time
GCODES="no"

###############
## DON'T EDIT ZONE ##
###############


CURRENTDATE=$(date)
MNTPATH=/mnt/backup/$CURRENTDATE 

if [ $CONFIG = "yes" ]
then
  cp -r /home/$USERNAME/klipper_config "$MNTPATH"
fi


if [ $KLIPPER = "yes" ]
then
  cp -r /home/$USERNAME/klipper "$MNTPATH"
fi

if [ $EXTRAS = "yes" ]
then
  cp -r /home/$USERNAME/klipper/klippy/extas "$MNTPATH"
fi

if [ $LOGS = "yes" ]
then
  cp -r /home/$USERNAME/klipper_logs "$MNTPATH"

fi

if [ $MOONRAKER = "yes" ]
then
  cp -r /home/$USERNAME/moon* "$MNTPATH"

fi

if [ $GCODES = "yes" ]
then
  cp -r /home/$USERNAME/gcode_files "$MNTPATH"

fi


#Made by Takuya#0523 ;)
