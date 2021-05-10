#!/bin/bash

# ---- Editor/Environment/Tools -----

# Function to run my backup environment scripts, then switch to the target backup repo so I can commit it.
#    Optional: pass in the target directory for the backups as a parameter.
if [ "$IS_LOCAL_SHELL" == "1" ]; then
    backupenv() {
        if [ -d $HOME/Development/Repos/Git/AvinusInternal/DevOps/EnvironmentResources/BackupScripts/ ]; then
            cd $HOME/Development/Repos/Git/AvinusInternal/DevOps/EnvironmentResources/BackupScripts/
            sh backupenv.sh "$1"
            cd $HOME/Development/Repos/Git/EnvironmentBackup/
        else
            echo "ERROR - Directory /Development/Repos/Git/AvinusInternal/DevOps/EnvironmentResources/BackupScripts/ not found."
        fi
    }
fi

# Function to set the terminal title - used by tabs.
function termtitle() {
    if [[ -z "$ORIG" ]]; then
        ORIG=$PS1
    fi
    TITLE="\[\e]2;$*\a\]"
    PS1=${ORIG}${TITLE}
}
