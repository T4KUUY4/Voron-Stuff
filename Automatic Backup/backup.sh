#!/bin/bash
# Takuya´s Backup Script for Auto Backup
# On Every reboot, selected files will be automatically backuped into timestamped folders.

###############
## EDIT ZONE ##
###############

#Replace "pi" if you have a different user. "pi" is standard in most installations.
USERNAME="pi" 

# you should understand how to enable and disable it manually...

#Klipper Config (default on)
CONFIG="yes"

#Klipper
KLIPPER='no'

#Moonraker History
HISTORY='no'

#Extras (ERCF Scripts, etc. )
EXTRAS='no'

#LOGS
LOGS='no'

#Moonraker and Env
MOONRAKER='no'

#G-Code Files. Warning: Will take up a lot of space over time
GCODES='no'

###############
## DON'T EDIT ZONE ##
###############

#Argument configuration check
if [ $CONFIG = "yes" ] || [ $CONFIG = "no" ]
then
  :
else
  echo -e ${BIRed}Klipper config argument can only be yes/no please correct "CONFIG=" in backup.sh${clear}. && exit
fi

if [ $KLIPPER = "yes" ] || [ $KLIPPER = "no" ]
then
  :
else
  echo -e ${BIRed}Klipper config argument can only be yes/no please correct "KLIPPER=" in backup.sh${clear}. && exit
fi

if [ $EXTRAS = "yes" ] || [ $EXTRAS = "no" ]
then
  :
else
  echo -e ${BIRed}Extras Backup -.py Scripts/ Ercf...- config argument can only be yes/no please correct "EXTRAS=" in backup.sh${clear}. && exit
fi

if [ $LOGS = "yes" ] || [ $LOGS = "no" ]
then
  :
else
  echo -e ${BIRed}Logs config argument can only be yes/no please correct "LOGS=" in backup.sh${clear}. && exit
fi

if [ $MOONRAKER = "yes" ] || [ $MOONRAKER = "no" ]
then
  :
else
  echo -e ${BIRed}Moonraker config argument can only be yes/no please correct "MOONRAKER=" in backup.sh${clear}. && exit
fi

if [ $GCODES = "yes" ] || [ $GCODES = "no" ]
then
  :
else
  echo -e ${BIRed}GCodes config argument can only be yes/no please correct "GCODES=" in backup.sh${clear}. && exit
fi

if [ $HISTORY = "yes" ] || [ $HISTORY = "no" ]
then
  :
else
  echo -e ${BIRed}History config argument can only be yes/no please correct "HISTORY=" in backup.sh${clear}. && exit
fi


CURRENTDATE=$(date)
MNTPATH=/mnt/backup/$CURRENTDATE 

if [ $CONFIG = "yes" ]
then
  cp -r /home/$USERNAME/klipper_config "$MNTPATH"
fi


if [ $KLIPPER = "yes"  ]
then
  cp -r /home/$USERNAME/klipper "$MNTPATH"
fi

if [ $EXTRAS = "yes" ]
then
  cp -r /home/$USERNAME/klipper/klippy/extras "$MNTPATH"
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

if [ $HISTORY = "yes" ]
then
  cp -r /home/$USERNAME/.moonraker_database "$MNTPATH"

fi

###############################
## CUSTOM BACKUP FOLDER ZONE ##
###############################

#Example: sudo cp -r /YOUR/FOLDER "$MNTPATH"









#Made by Takuya#0523 ;)
