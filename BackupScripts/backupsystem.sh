## System/Ubuntu Config Backup
## Called via main backupenv.sh script.

mkdir -p $backuptarget'SystemSettingsBackup/'
cd $backuptarget'SystemSettingsBackup/'

# Backup installed apt packages list.
# Reinstall via:
#     $ sudo dpkg --set-selections < ./apt_packages
#     $ sudo apt-get -y update
#     $ sudo apt-get dselect-upgrade
dpkg --get-selections | grep -v deinstall > apt_packages.txt
echo "\n\033[1;36mSystem: Backed up apt packages list."

# Backup Bash config and related.
cp ~/.bashrc .bashrc
cp ~/.bashrc_custom .bashrc_custom
echo "\033[1;36mSystem: Backed up Bash custom settings."
