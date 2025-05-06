# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
# case $- in
#     *i*) ;;
#       *) return;;
# esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# Undocumented feature which sets the size to "unlimited".
export HISTFILESIZE=
export HISTSIZE=10000
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# export TERM=xterm-256color
# # set a fancy prompt (non-color, unless we know we "want" color)
# case "$TERM" in
#     xterm-color) color_prompt=yes;;
# esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    #test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
# .bashrc

alias l="exa -l"
alias ls="ls --color"
alias ll="ls -lh --time-style long-iso"
alias la="ls -lah --time-style long-iso"
alias lsd="ls -d"
alias max="emacsclient -n -a emacs "
alias smax="SUDO_EDITOR=\"emacsclient\" sudo -e"
alias grep="grep --color"
#alias hg=chg
alias hgl='hg log -G '
alias hgp="hg up 'public()'"
alias hgL='hg log -G --template gitshort'
alias hgd='hgl -r . -vp'
alias hgle='hg log -T gitextra -G '
# Pour les gros doigts
alias sl="ls"
alias cd..='cd ..'
alias xs='cd'
alias grpe='grep'
alias mroe='more'
alias tial='tail'
alias ghl='hgl'
######
alias windaub='rdesktop -k fr -g 1850x1180 -a 16 172.19.7.53'
alias amazon="amzsear"
alias passgen="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 12 | tr -d '\n'; echo"
##### kitty
alias s="kitty +kitten ssh"
##### k8s
alias k="kubectl"
alias kns="kubens"
alias knsc="kubectl config set-context  --current --namespace"
alias kms="kubectl-modify-secret"
alias depdeb="kubectl create deploy debian --image=xgaia/debutils -- sleep infinity"
alias e="echo"
alias ffmpegstab="/usr/local/bin/ffmpeg-stab/ffmpeg"
##### magit
alias magit='emacsclient -a emacs -e "(magit-status \"$(git rev-parse --show-toplevel)\")"'

function kps () {
    kubectl get secret ${1} --template='{{ range $key, $value := .data }}{{ printf "%s: %s\n" $key ($value | base64decode) }}{{ end }}'
}

complete -F __start_kubectl k

alias bxterm="xterm -fg white -bg black"
#setterm -blength 0
# append to the history file, don't overwrite it
shopt -s histappend

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

#export LANG="fr_FR@euro"
#export LC_ALL=fr_FR.utf8

# Taille de l'historique
export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
# Erase duplicates in history
export HISTCONTROL=erasedups

export ALTERNATE_EDITOR=/usr/bin/emacsclient
export SVN_EDITOR=/usr/bin/emacsclient
export EDITOR=/usr/bin/emacsclient
export HGEDITOR=/usr/bin/emacsclient
export GIT_EDITOR=/usr/bin/emacsclient
export PATH="/home/djangoliv/.cask/bin:$PATH"
#export PATH=$PATH:$HOME/Tools/minio-binaries/
export VISUAL=$EDITOR

# ANT en couleur
export ANT_OPTS=-Xmx256m

# completion
complete -cf sudo
complete -d cd
if [ -f ~/.ssh/known_hosts ]; then
    complete -W "$(while IFS=' ,' read host t; do echo $host; done < ~/.ssh/known_hosts)" ssh
    complete -W "$(while IFS=' ,' read host t; do echo $host; done < ~/.ssh/known_hosts)" ping
fi

stty stop ^X # permet le C-s pendant un C-r

# QT
#PATH=/usr/local/Trolltech/Qt-4.8.5/bin/:$PATH
#LD_LIBRARY_PATH=/usr/local/Trolltech/Qt-4.8.5/lib/:$LD_LIBRARY_PATH

# tree_sitter
export LD_LIBRARY_PATH=/usr/local/lib/

# firefox
export PATH=$PATH:/home/djangoliv/Tools/firefox/firefox

# projman
# export PYTHONPATH=/usr/local/lib/python2.7/dist-packages/:$PYTHONPATH
# documentor
export PATH=$PATH:/home/djangoliv/workspaces/logilab/documentor/bin/
export PYTHONPATH=/home/djangoliv/workspaces/logilab/documentor/build/lib.linux-x86_64-2.7/:$PYTHONPATH

# projets
export PYTHONPATH=/home/djangoliv/workspaces/Tympan/tympan-blender/blender/addon/:$PYTHONPATH

# cd qui ce rapelle des chemins
function cd
{
    local i MAX LEN p

    MAX=10
    LEN=${#DIRSTACK[@]}
    if [ $# -eq 0 ]; then
        builtin cd ~/ || return 1
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

# permet de copier un fichier dans tous les sous repertoires du répertoire cible
copyInDirs () {
    for dir in $2/*/; do cp $1 "$dir"; done
}
alias dispatch=copyInDirs

export PYTHONSTARTUP="/home/djangoliv/.pythonrc.py"
export PYTHONDONTWRITEBYTECODE=1
export WORKON_HOME=/home/djangoliv/Tools/python/venv
export PROJECT_HOME=$HOME/workspaces
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# virtualenvwrapper
# export WORKON_HOME=~/.virtualenvs
# export PROJECT_HOME=/home/djangoliv/workspaces/

# PROMPT
# variable/to/.../shorten/long_paths
PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 28 ]; then CurDir=${DIR:0:8}...${DIR:${#DIR}-16}; else CurDir=$DIR; fi'

PS1='\[\033[0;36m\]\u@\h\[\033[0;m\]:\[\e[1m\]${CurDir}\$ '

# PATH
export PATH=/home/djangoliv/.local/bin:$PATH
export PAGER='less -FRXS'


# cubicweb
#export CW_MODE=user
#export CW_CUBES_PATH=/home/djangoliv/workspaces/cubes
export CW_INSTANCES_DIR=/home/djangoliv/workspaces/cw_instances/

# An emacs 'alias' with the ability to read from stdin
function e
{
    # If the argument is - then write stdin to a tempfile and open the
    # tempfile.
    if [[ $# -ge 1 ]] && [[ "$1" == - ]]; then
        tempfile="$(mktemp emacs-stdin-$USER.XXXXXXX --tmpdir)"
        cat - > "$tempfile"
        _emacsfun --eval "(find-file \"$tempfile\")" \
            --eval '(set-visited-file-name nil)' \
            --eval '(rename-buffer "*stdin*" t))'
    else
        /usr/bin/emacsclient "$@"
    fi
}
function kprompt
{
    source /home/djangoliv/.kube/prompt.sh
    PS1='$(kube_ps1)${CurDir}\$ '
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# pyautocompleteoptions
# if [ -d "$HOME/.pyautocomplete" ]; then
# 	for i in `find $HOME/.pyautocomplete -maxdepth 1 -type f -name "*sh"`; do source $i; done
# fi

# typo in directory
shopt -s cdspell
alias ..='cd ..'

# fix var completion with "\"
shopt -s direxpand

# kubeconfig
#export KUBECONFIG=/home/djangoliv/.kube/ovh.yml
#kns jupyterapps-dev
# kubectl krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
# kustomize
export PATH=/home/djangoliv/Tools/kustomize/:$PATH
