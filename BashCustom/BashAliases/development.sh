# Bash Aliases for Misc Development

# ----- Homestead -----

# Vagrant Up
alias homeup='cd ~/Homestead/ ; vagrant up'


# ---- PHP -----

# Run the built in php webserver for my local homepage.
alias phphome='printf "\n\e[1;33mVisit at: http://localhost:8000\e[0m\n\n" ; cd ~/Development/Saturn-Projects/LocalPHP/public/ ; php -S localhost:8000'
# Run php webserver in current directory. Silence output. Push process to background (& at end of command).
alias phpup='printf "\n\e[1;33mVisit at: http://localhost:8000\e[0m\n\n" ; php -S localhost:8000 >/dev/null 2>&1'
# Run PHPLOC and PHPCPD and save output to a file.
alias phpanalysis='{ printf "***** PHPLOC AND PHPCPD ANALYSIS *****\n\n" ; phploc . ; printf "\n----------------------------------\n\n" ; phpcpd . ; } > phpanalysis.txt ; printf "\n \e[1;32m>>> PPHLOC and PHPCPD output saved to phpanalysis.txt\n"'
# Run phpunit from vendor directory.
alias vphpunit='vendor/bin/phpunit'



# ---- Git ----
alias gstate='bash $HOME/BashCustom/Functions/gstate.sh'
alias gsummary='bash $HOME/BashCustom/Functions/git_summary.sh -l .'
#alias gsummary='find . -maxdepth 1 -mindepth 1 -type d -exec sh -c \'(echo {} && cd {} && git -c color.status=always status 2> /dev/null && echo)\' \; | less -R'
