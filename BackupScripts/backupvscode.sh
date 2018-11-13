## VSCode Backup.
## Called via main backupenv.sh script.

mkdir -p $backuptarget'VSCode/'
cd $backuptarget'VSCode/'

# Backup extensions list as cli commands we can run to re-install.
code --list-extensions 2> /dev/null | xargs -L 1 echo code --install-extension > extensions.txt
echo "\n\033[1;36mVSCode: Exported extensions."

# Backup settings and keybindings.
cp ~/.config/Code/User/settings.json settings.json
cp ~/.config/Code/User/keybindings.json keybindings.json
echo "VSCode: Backed up settings and keybindings."

# Backup snippets folder
rm -r snippets/
cp -ar ~/.config/Code/User/snippets/ snippets/
echo "VSCode: Backed up snippets directory."
