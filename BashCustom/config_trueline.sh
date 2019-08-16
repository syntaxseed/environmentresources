# Configure and include Trueline.

TRUELINE_WORKING_DIR_SPACE_BETWEEN_PATH_SEPARATOR=false

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

declare -a TRUELINE_SEGMENTS=(
    'user,green,special_grey'
    'bg_jobs,red,black'
    'working_dir,light_blue,cursor_grey'
    'git,yellow,special_grey'
    'mercurial,yellow,special_grey'
    'newline,black,yellow'
)

source ~/BashCustom/trueline/trueline.sh
