# .bashrc

# Source global definitions
if [ -f /AGILE/users/bashrc ]; then
        . /AGILE/users/bashrc
fi

alias l="ls --color=tty"
alias ls="ls --color"
alias ll="ls -lh --time-style long-iso"
alias la="ls -lah --time-style long-iso"
alias grep="grep --color=always"
alias ouvreEtFaitPasChier='xdg-open '
# Pour les gros doigts
alias sl="ls"
alias lsd="ls -d"
alias cd..='cd ..'
alias xs='cd'
alias grpe='grep'
alias mroe='more'
alias tial='tail'

### EMACS
alias max="emacsclient -n -a emacs "
alias smax="emacs --geometry 130x60 -q -l ~giorgis/.emacs-simple "

setterm -blength 0

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

#Editeur pour client svn
export SVN_EDITOR=emacsclient

# append to the history file, don't overwrite it
shopt -s histappend
# Taille de l'historique
export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}

export ALTERNATE_EDITOR=""

# completion
complete -cf sudo
complete -d cd

PBS_O_WORDIR=/tmp

# proxy
export http_proxy=...
export https_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy

stty stop ^X # permet le C-s pendant un C-r

if [ -f ~/.ssh/known_hosts ]; then
    complete -W "$(while IFS=' ,' read host t; do echo $host; done < ~/.ssh/known_hosts)" ssh
    complete -W "$(while IFS=' ,' read host t; do echo $host; done < ~/.ssh/known_hosts)" ping
fi

# cd qui ce rapelle des chemins
function cd
{
    local i MAX LEN p

    MAX=10
    LEN=${#DIRSTACK[@]}

    if [ $# -eq 0 ]; then
        builtin cd /space/giorgis/ || return 1
        pushd -n $OLDPWD > /dev/null
    elif [ "$1" = "-" ]; then
        builtin cd "$@" || return 1
        pushd -n $OLDPWD > /dev/null
    else
        pushd "$@" > /dev/null || return 1
    fi

    if [ $LEN -gt 1 ]; then
        for ((i=1; i <= LEN ; i++)); do
            eval p=~$i
            if [ "$p" = "$PWD" ]; then
                popd -n +$i > /dev/null
                break
            fi
        done
    fi

    if [ $LEN -ge $MAX ]; then
        popd -n -0 > /dev/null
    fi
}

function display_stack
{
    dirs -v
    echo -n "#: "
    read dir
    if [[ $dir != 'q' ]]; then
        cd +$dir
    fi
}
alias cdd=display_stack

# emacs pwd
if [ "$TERM" = "eterm-color" ]; then
    function eterm-set-cwd {
        $@
        echo -e "\033AnSiTc" $(pwd)
    }
    # set hostname, user, and cwd
    function eterm-reset {
        echo -e "\033AnSiTu" $(whoami)
        echo -e "\033AnSiTc" $(pwd)
        echo -e "\033AnSiTh" $(hostname)
    }
    for temp in cd pushd popd; do
        alias $temp="eterm-set-cwd $temp"
    done
    # set hostname, user, and cwd now
    eterm-reset
fi

# ant en couleur
export ANT_ARGS='-logger org.apache.tools.ant.listener.AnsiColorLogger'

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xjf $1    ;;
           *.tar.gz)    tar xzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xf $1     ;;
           *.tbz2)      tar xjf $1    ;;
           *.tgz)       tar xzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

psgrep() {
	if [ ! -z $1 ] ; then
		echo "Grepping for processes matching $1..."
		ps aux | grep $1 | grep -v grep
	else
		echo "!! Need name to grep for"
	fi
}

export PYTHONSTARTUP="/home/giorgis/.pythonrc.py"

# emacs diff
diffEmacs () {
    emacsclient -e "(ediff-files \"$1\" \"$2\")"
}

# PROMPT

# variable/to/.../shorten/long_paths
PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 28 ]; then CurDir=${DIR:0:9}...${DIR:${#DIR}-22}; else CurDir=$DIR; fi'

# git branch
# change prompt when in a git repository
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    c_reset=`tput sgr0`
    c_git_clean=`tput setaf 2`
    c_git_dirty=`tput setaf 4`
else
    c_reset=
    c_git_clean=
    c_git_dirty=
fi
git_prompt ()
{
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        return 0
    fi
    git_branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
    if git diff --quiet 2>/dev/null >&2; then
        git_color="${c_git_clean}"
    else
        git_color=${c_git_dirty}
    fi
    echo " [$git_color$git_branch${c_reset}]"
}

PS1='\[\033[0;36m\]\u@\h\[\033[0;m\]\[\033[1;33m\]${c_reset}$(git_prompt):\[\e[1m\]${CurDir}\$\[\033[0;m\] '
