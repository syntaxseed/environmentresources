#!/bin/bash

# ---- Editor/Environment/Tools -----

# Function to run my backup environment scripts, then switch to the target backup repo so I can commit it.
#    Optional: pass in the target directory for the backups as a parameter.
backupenv() {
    cd /home/sherriw/Development/Repos/Git/EnvironmentResources/BackupScripts/
    sh backupenv.sh "$1"
    cd /home/sherriw/Development/Repos/Git/EnvironmentBackup/
}

# Function to set the terminal title - used by tabs.
function termtitle() {
    if [[ -z "$ORIG" ]]; then
        ORIG=$PS1
    fi
    TITLE="\[\e]2;$*\a\]"
    PS1=${ORIG}${TITLE}
}
