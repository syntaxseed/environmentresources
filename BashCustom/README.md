# About BashCustom

This directory contains Sherri's Bash customizations.

## Usage

- Upload the bash_custom directory to the system's home directory.
- Ensure that .bash_profile (new logins, SSH) includes .bashrc (screen, others).
- Ensure that .bashrc includes (at the bottom) bash_custom/.bashrc_custom like so:

```
# include .bashrc_custom if it exists
if [ -f $HOME/BashCustom/.bashrc_custom ]; then
    . $HOME/BashCustom/.bashrc_custom
fi
```


## Contains

- My custom paths.
- Aliases
- Functions like: termtitle, backupenv, gstate.
- Prompt customization.
- Git prompt.
- An elephant.
- Etc.
