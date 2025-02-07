#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
elif [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
elif [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi


alias vi='nvim'
#cat "$HOME/.config/tool/naviASCII"
export DBUS_SESSION_BUS_ADDRESS=$(dbus-launch | grep -o "unix:abstract=[^,]*" | head -n 1)
bind "set completion-ignore-case on"
export _JAVA_AWT_WM_NONREPARENTING=1

cat ~/.config/frog_ascii.txt
