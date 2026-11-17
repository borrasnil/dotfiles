# ----------------------------------------
# Author: kam
# Date: Mon Nov 16 12:38:55 CET 2026
# License: MIT
# ----------------------------------------

# Grab a field from given input
# Adapted from http://www.brendangregg.com/Shell/field
#
# $ echo -e '  three    different\tcolumns ' | field 2
# different
field() {
	awk -F "${2:- }" "{ print \$${1:-1} }"
}


if [ -z "$SSH_AUTH_SOCK" ]; then
    eval $(ssh-agent -s) > /dev/null
fi

PATH=$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin

# History config
export HISTSIZE=10000
export HISTFILE=$HOME/.bash-history

export PATH HOME TERM

# Basic vars
export TERM="st"
export EDITOR="vim"
export GREP_COLOR='1;36'
export TZ="Europe/Madrid"
export PAGER="less"
export VISUAL="vim"

export COLOR1=$'\x1b[38;5;87m'   # cyan
export COLOR2=$'\x1b[38;5;211m'  # magenta
export COLOR3=$'\x1b[38;5;120m'  # green
export COLOR4=$'\x1b[38;5;241m'  # dim
export COLOR5=$'\x1b[38;5;223m'  # off-white (text)
export RST=$'\x1b[0m'
export BOLD=$'\x1b[1m'
export BOLDOFF=$'\x1b[22m'
export ITALICS=$'\x1b[3m'
export ITALICSOFF=$'\x1b[23m'

PS1='[\u@\h \w]\$$RST '

# Support colors in less
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;33;44m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[4;1;32m'
export LESS_TERMCAP_mr=$'\e[7m'
export LESS_TERMCAP_mh=$'\e[2m'
export LESS_TERMCAP_ZN=$'\e[74m'
export LESS_TERMCAP_ZV=$'\e[75m'
export LESS_TERMCAP_ZO=$'\e[73m'
export LESS_TERMCAP_ZW=$'\e[75m'
export GROFF_NO_SGR=1

# Shortcuts
alias nf="neofetch"
alias ga="git add"
alias gc="git commit"
alias gpo="git push origin"
alias la="ls -la"
alias ll="ls -lah"
alias hl="rg --passthru"

# Clipboard related
alias clip='xclip -selection clipboard'

# Coloring stuff
[[ -x $(type -P rg) ]] && alias grep="rg"
[[ -x $(type -P eza) ]] && alias ls="eza --group-directories-first"
[[ -x $(type -P bat) ]] && alias cat="bat"
