# Bash Aliases for General Use

# ----- Learning -----

# Ascii cow teaches a random bash command
alias ?tip='cowsay -f $(ls /usr/share/cowsay/cows | shuf -n 1 | cut -d. -f1) $(whatis $(ls /bin) 2>/dev/null | shuf -n 1)'

# Function to set the terminal title - used by tabs.
function termtitle() {
    if [[ -z "$ORIG" ]]; then
        ORIG=$PS1
    fi
    TITLE="\[\e]2;$*\a\]"
    PS1=${ORIG}${TITLE}
}
