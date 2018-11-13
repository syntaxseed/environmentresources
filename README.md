# Environment Resources

Created by @SyntaxSeed (Sherri W)

## Contains ##

* Nice Bash command prompts.
* Handy Bash aliases.
* Bash Scripts to backup:
    * Global Composer json and lock files backup.
    * VSCode extensions list and settings/keymap files backup.
    * PHP.ini backups.
    * Npm global config backup.
    * Global Git config file.
    * Linux System settings.

![Bash prompt with Git info](https://github.com/syntaxseed/environmentresources/blob/master/assets/images/prompt.png)


## Automatic Backup

There is a script (BackupScripts/backupenv.sh) to automatically back these up to a target directory/repo (Linux). You may need to tweak this for your environment. Run it like so:
$ sh backupenv.sh

The Bash aliases file includes a global alias for this backup script: 'backupenv'.

![VS Code backup script.](https://github.com/syntaxseed/environmentresources/blob/master/assets/images/backup-script.png)

## Licence

This information is made freely available under no licence.
Various settings and configuration files may have licenses under their respective softwares.
