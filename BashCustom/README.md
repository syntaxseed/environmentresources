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

## Trueline Prompt

To use the Trueline prompt set the config var at the top of .bash_custom. You must use a Nerd Font like the included Fira Mono which includes all the symbols. (Put it in ~/.fonts/ directory on Ubuntu.)

- https://github.com/petobens/trueline


## Contains

- My custom paths.
- Aliases
- Functions like: termtitle, backupenv, gstate.
- Prompt customization.
- Git prompt.
- An elephant.
- Etc.
