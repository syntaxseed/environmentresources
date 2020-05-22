# Configure and include Trueline.

TRUELINE_WORKING_DIR_SPACE_BETWEEN_PATH_SEPARATOR=false
TRUELINE_GIT_SHOW_STATUS_NUMBERS=true

declare -A TRUELINE_SYMBOLS=(
    [working_dir_separator]='/'
    [working_dir_home]='~'
    [newline]=''
    [mercurial]=''
)

declare -A TRUELINE_COLORS=(
    [green]='40;255;40'
    [light_blue]='40;255;255'
    [yellow]='255;255;0'
    [blue]='0;90;235'
)

_trueline_mercurial_segment() {
    hgsymb="${TRUELINE_SYMBOLS[mercurial]}"
    local some_content="$(hg_prompt)"
    if [[ -n "$some_content" ]]; then
        local fg_color="$1"
        local bg_color="$2"
        local segment="$(_trueline_separator)"
        segment+="$(_trueline_content "$fg_color" "$bg_color" normal " $hgsymb$some_content ")"
        PS1+="$segment"
        _last_color=$bg_color
    fi
}

_trueline_newlineblank_segment(){
    PS1+="\n"
}

_trueline_gitcustom_segment() {

    local branch_icon="$(_trueline_git_remote_icon)"
    branch_icon="${branch_icon#"${branch_icon%%[![:space:]]*}"}" # Trim leading whitespace.
    branch_icon="${branch_icon%"${branch_icon##*[![:space:]]}"}"  # Trim trailing whitespace.

    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWUNTRACKEDFILES=1
    GIT_PS1_SHOWUPSTREAM="auto"
    local some_content="$(__git_ps1 %s)"

    if [[ -n "$some_content" ]]; then
        local fg_color="$1"
        local bg_color="$2"
        local segment="$(_trueline_separator)"
        segment+="$(_trueline_content "$fg_color" "$bg_color" normal " $branch_icon $some_content ")"
        PS1+="$segment"
        _last_color=$bg_color
    fi
}

declare -a TRUELINE_SEGMENTS=(
    'newlineblank'
    'user,green,special_grey'
    'bg_jobs,red,black'
    'working_dir,light_blue,cursor_grey'
    'gitcustom,yellow,special_grey'
    'mercurial,yellow,special_grey'
    'newline,black,yellow'
)

source ~/BashCustom/trueline/trueline.sh
