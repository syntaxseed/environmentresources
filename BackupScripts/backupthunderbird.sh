## Thunderbird backup
## Called via main backupenv.sh script.

mkdir -p $backuptarget'Thunderbird/'
cd $backuptarget'Thunderbird/'


# Backup Thunderbird settings.
cp -ar ~/.thunderbird/trsl5s91.default-release profile-default-release/
echo "Thunderbird: Backed up profile directory."
