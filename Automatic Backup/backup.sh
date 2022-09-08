# Takuya´s Backup Script for Auto Backup

#Replace "pi" if you have a different user. "pi" is standard in most installations.
USER="pi" 


# Uncomment by removing # for every backup you want to create. klipper_config is on by default

# Klipper config
cp -r /home/$USER/klipper_config /mnt/backup 

# Klipper (includes all scripts)
#cp -r /home/$USER/klipper /mnt/backup

# Klipper Extras (ERCF Scripts, etc..)

#cp -r /home/$USER/klipper/klippy/extas /mnt/backup

# Klipper logs
#cp -r /home/$USER/klipper_logs /mnt/backup


# Moonraker and Moonraker-env
#cp -r /home/$USER/moon* /mnt/backup

# Gcode Files
#cp -r /home/$USER/gcode_files /mnt/backup

#Made by Takuya#0523 ;)
