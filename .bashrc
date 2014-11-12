# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


PS1="[\u@\h:\W]$ "
unset color_prompt force_color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias la='ls -lha'
alias clipboard='xclip -sel clip'
alias webpage='w3m -cols 80 -O ascii -r -M -s -dump'
alias pgrep="ps -A | grep"

# For tmux to assume 256 colours
alias tmux='tmux -2'

source ~/.git-completion.sh

# 256 colour terminal
export TERM="screen-256color"
export EDITOR="vim"
