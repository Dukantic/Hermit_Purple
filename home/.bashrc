#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

alias vi='nvim'
#cat "$HOME/.config/tool/naviASCII"
export DBUS_SESSION_BUS_ADDRESS=$(dbus-launch | grep -o "unix:abstract=[^,]*" | head -n 1)
bind "set completion-ignore-case on"
