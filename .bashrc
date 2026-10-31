#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#
# INIT
#


PATH="$PATH:/opt/scripts:/home/kam/.cargo/bin"
fastfetch

#
# ALIASES
#

alias ls='eza'
alias la='eza -la --sort=type --reverse'
alias grep='grep --color=auto'
alias hl='rg --smart-case --passthru'
alias ..='cd ..'
alias cd..='cd ..'
alias wimi='curl ipinfo.io/json | jq'

alias ff='fastfetch'
alias p='sudo pacman'
alias t='tmux new-session -A -s main'

alias ga='git add'
alias gc='git commit'
alias gp='git push'

alias nimv='nvim'
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias pign='ping'
alias crul='curl'

# tests

alias nv='NVIM_APPNAME=nvim_tests nvim'

#PS1='[\u@\h \W]\$ '
