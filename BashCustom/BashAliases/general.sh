# Bash Aliases for General Use

alias la='ls -A'

alias goplex='sudo service plexmediaserver restart'

# ----- Learning -----

# Ascii cow teaches a random bash command
alias ?tip='cowsay -f $(ls /usr/share/cowsay/cows | shuf -n 1 | cut -d. -f1) $(whatis $(ls /bin) 2>/dev/null | shuf -n 1)'
