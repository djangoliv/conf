# ~/.bashrc

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

# Emacs' term/multi-term sets TERM=eterm-color and points TERMINFO at its own
# database; overriding it here makes ncurses emit ISO 2022 charset sequences
# (\e(B) that term.el does not implement, and they show up literally.
[ -n "$INSIDE_EMACS" ] || export TERM=xterm-256color

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
alias bluetooth='blueman-applet'

function kps () {
    kubectl get secret ${1} --template='{{ range $key, $value := .data }}{{ printf "%s: %s\n" $key ($value | base64decode) }}{{ end }}'
}

complete -F __start_kubectl k
source <(kubectl completion bash)

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
export VISUAL=$EDITOR
export SYSTEMD_EDITOR=vim

# ANT en couleur
export ANT_OPTS=-Xmx256m

# completion
complete -cf sudo
complete -d cd
if [ -f ~/.ssh/known_hosts ]; then
    complete -W "$(while IFS=' ,' read host t; do echo $host; done < ~/.ssh/known_hosts)" ssh
    complete -W "$(while IFS=' ,' read host t; do echo $host; done < ~/.ssh/known_hosts)" ping
fi

if [ -t 0 ]; then
  stty stop ^X # permet le C-s pendant un C-r
fi
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

export PYTHONSTARTUP="$HOME/.pythonrc.py"
export PYTHONDONTWRITEBYTECODE=1
export WORKON_HOME=$HOME/Tools/python/venv
export PROJECT_HOME=$HOME/workspaces
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh


# PROMPT
# variable/to/.../shorten/long_paths
PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 28 ]; then CurDir=${DIR:0:8}...${DIR:${#DIR}-16}; else CurDir=$DIR; fi'

PS1='\[\033[0;36m\]\u@\h\[\033[0;m\]:\[\e[1m\]${CurDir}\$ '

export PAGER='less -FRXS'

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
    source $HOME/.kube/prompt.sh
    #PS1='$(kube_ps1)'$PS1
    PS1='$(kube_ps1)${CurDir}\$ '
}


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# typo in directory
shopt -s cdspell
#eval $(thefuck --alias)
#alias ..='cd ..'

# fix var completion with "\"
shopt -s direxpand

export CMAKE_C_COMPILER=clang-19
export CMAKE_CXX_COMPILER=clang++-19

# firefox
export PATH=$HOME/Tools/firefox/firefox:$PATH
export BROWSER=$HOME/Tools/firefox/firefox/firefox

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# mamba
export PATH=$HOME/Tools/miniforge3/bin:$PATH

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
export MAMBA_EXE="$HOME/Tools/miniforge3/bin/micromamba";
export MAMBA_ROOT_PREFIX="$HOME/Tools/miniforge3";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$HOME/Tools/miniforge3/bin/conda" 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/Tools/miniforge3/etc/profile.d/conda.sh" ]; then
        . "$HOME/Tools/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/Tools/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


. "$HOME/.local/bin/env"

# conda completion
eval "$(register-python-argcomplete conda)"
eval "$(register-python-argcomplete black)"

# Scaleway CLI autocomplete initialization.
eval "$(scw autocomplete script shell=bash)"

export PYTHONPATH=$HOME/.config/py3status:$PYTHONPATH
export PATH="$HOME/.pixi/bin:$PATH"

# k3s-cnam kubectl tunnel alias
alias ktunnel='ssh -N -f papay-tunnel 2>/dev/null || true'
alias kc='KUBECONFIG=$HOME/.kube/config kubectl'
