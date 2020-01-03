# Bash Aliases

Handy aliases for bash terminal.

Include into ~/.bashrc like so:

```
# include additional alias file if it exists
if [ -f ~/Path/To/BashAliases/master.sh ]; then
    source ~/Path/To/BashAliases/master.sh
fi
```

The master file loads all the others (update master if another file of aliases is added). It also includes the goto utility (https://github.com/iridakos/goto) for creating directory shortcuts.
