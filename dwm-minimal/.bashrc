#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cdwm='vim ~/dwm/config.h'
alias mdwm='cd ~/dwm; sudo make clean install; cd-'
alias vol='pactl get-sink-volume @DEFAULT_SINK@ | grep %'
alias bright='brightnessctl | grep %'
alias time='tty-clock -c -C 4'
PS1='[\u@\h \W]\$ '
