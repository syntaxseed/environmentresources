## Global Composer Backup
## Called via main backupenv.sh script.

cd $backuptarget'ComposerGlobal/'

# Backup composer json and lock file.
cp ~/.config/composer/composer.json composer.json
cp ~/.config/composer/composer.lock composer.lock
echo "\n\033[1;35mComposer: Backed up global Composer json and lock files."
