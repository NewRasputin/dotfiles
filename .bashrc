#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lhAX --color=auto'
PS1='[\u@\h \W]\$ '
export WORKON_HOME=$HOME/.virtalenvs
export PROJECT_HOME=$HOME/dev
source /usr/local/bin/virtualenvwrapper.sh
