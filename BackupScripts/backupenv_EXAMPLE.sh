#!/bin/bash

## SCRIPT TO BACKUP ENVIRONMENT SETTINGS
## Run this from within the ..../environmentresources/BackupScripts/ repo dir, via: $ sh backupenv.sh
## Set the backuptarget (below) so you backup to a different (private) repo.
## (My Bash aliases have one for this called 'backupenv'.)
## Tip: can run this from within the VS Code terminal!

# Check if a backup target directory was passed to the script.
# If not, use the hard-coded fallback below.
if [ -z "$1" ]
then
    backuptarget='/home/yourusername/Git/EnvironmentBackup/'
else
    backuptarget=$1"/"
fi

backupscripts=$PWD

# Run all backup scripts from this location:
. $backupscripts/backupvscode.sh
. $backupscripts/backupcomposer.sh
. $backupscripts/backupnpm.sh
. $backupscripts/backupphp.sh
. $backupscripts/backupgit.sh
. $backupscripts/backupsystem.sh

cd $backuptarget

echo "\n\033[1;32m**** Don't forget to commit to Git! ****\033[0m"
