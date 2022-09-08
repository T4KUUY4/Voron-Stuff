
# Auto-Backup your printer config files to a network share (NAS, Windows share whatever)

## Disclaimer
WORK IN PROGRESS. **BACKUP YOUR FILES MANUALLY!!!!**
I´m not responsible for any not functioning printers or lost files!

## Requirements 
 * Network Share (Windows, Linux, Synology). The host has to be online and have a fixed Hostname or IP. 
 Click the link below for your platform if you have difficulties creating one. Also create a **DEDICATED** user. 
 
	 * Windows: 
			1.  Create a new user for the shared folder
			2. Example Username=**Printer**, Password=**Backup**
			3. Open  **File Explorer**  and browse to the folder you want to share.
			4.  Right-click it and select  **Properties**.
			5.  Select the **Sharing** tab **> Share.**
			6.  Within the  **Network access**  window, select the new user you just created.
			7.  Click  **Add > Share**.
			8.  Copy the network path.
			9.  Click  **Done**.
	
	 * Linux: Refer to https://docs.fedoraproject.org/en-US/quick-docs/samba/
	 * Synology: Refer to https://kb.synology.com/en-global/DSM/help/DSM/AdminCenter/file_share_create?version=7

## Installation

    wget https://raw.githubusercontent.com/T4KUUY4/Voron-Stuff/main/Automatic%20Backup/install.sh
    bash install.sh
## Configuration
* The backup script has some additional configuration options. Open it with `sudo nano /home/$USER/backup.sh`
*  Follow the instructions given in the script
* You can also include any other folder if you feel the need. 
* The Syntax is: `sudo cp -r /YOUR/FOLDER/ /mnt/backup`
 
## Questions? 
Tag me on Discord: Takuya#0523
