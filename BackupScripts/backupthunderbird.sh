## Thunderbird backup
## Called via main backupenv.sh script.

mkdir -p $backuptarget'Thunderbird/'
cd $backuptarget'Thunderbird/'

# Backup Thunderbird settings.
cp ~/.thunderbird/trsl5s91.default-release/prefs.js prefs.js # Preferences and account settings.
cp ~/.thunderbird/trsl5s91.default-release/prefs.js abook.sqlite # Address book.


echo "\nThunderbird: Backed up profile directory."
