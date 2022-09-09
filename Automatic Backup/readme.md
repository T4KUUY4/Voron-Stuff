
# Auto-Backup your printer config files to a network share (NAS, Windows share whatever)

## Disclaimer
WORK IN PROGRESS. **BACKUP YOUR FILES MANUALLY!!!!**
I´m not responsible for any not functioning printers or lost files!

## Requirements 
 * Network Share (Windows, Linux, Synology). The host has to be online and have a fixed Hostname or IP. 
 Click the link below for your platform if you have difficulties creating one. Also create a **DEDICATED** user. 
 
 * Windows: 
	* Create a new user for the shared folder
	* Example Username=**Printer**, Password=**Backup**
	* Open  **File Explorer**  and browse to the folder you want to share.
	* Right-click it and select  **Properties**.
	* Select the **Sharing** tab **> Share.**
	* Within the  **Network access**  window, select the new user you just created.
	* Click  **Add > Share**.
	* Copy the network path.
	* Click  **Done**.
			
	
* Linux: Refer to https://docs.fedoraproject.org/en-US/quick-docs/samba/
 * Synology: Refer to https://kb.synology.com/en-global/DSM/help/DSM/AdminCenter/file_share_create?version=7

## Installation

    wget https://raw.githubusercontent.com/T4KUUY4/Voron-Stuff/main/Automatic%20Backup/install.sh
    bash install.sh
## Configuration
* The backup script has some additional configuration options. Open it with `sudo nano /home/$USER/backup.sh`
*  Follow the instructions given in the script
* You can also include any other folder if you feel the need. 
* The Syntax is: `sudo cp -r /YOUR/FOLDER/ "$MNTPATH"`
 
## Want a Mainsail/Fluidd Backup Macro?
**Requires G-Gcode Shell Command Extension (install with KIAUH)**
* Download the backup.cfg and include it in your printer.cfg


## Questions? 
Tag me on Discord: Takuya#0523
