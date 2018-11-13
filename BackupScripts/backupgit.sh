## Global Git Backup
## Called via main backupenv.sh script.

cd $backuptarget'GitGlobal/'

# Backup git global config
cp ~/.gitconfig .gitconfig
echo "\n\033[1;33mGit: Backed up global Git config."
