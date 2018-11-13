#!/bin/bash

## SCRIPT TO BACKUP ENVIRONMENT SETTINGS
## Run this from within the ..../environmentresources/BackupScripts/ repo dir, via: $ sh backupenv.sh
## Set the backuptarget (below) so you backup to a different (private) repo.
## (My BashAliases have one for this called 'backupenv'.)
## Tip: can run this from within the VS Code terminal!

backuptarget='/home/yourname/Git/EnvironmentBackup/'
backupscripts='/home/yourname/Git/EnvironmentResources/BackupScripts/'

. $backupscripts/backupvscode.sh
. $backupscripts/backupcomposer.sh
. $backupscripts/backupnpm.sh
. $backupscripts/backupphp.sh
. $backupscripts/backupgit.sh
. $backupscripts/backupsystem.sh

cd $backuptarget

echo "\n\033[1;32m**** Don't forget to commit to Git! ****\033[0m"
