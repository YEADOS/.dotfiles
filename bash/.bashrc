#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Convert hex to RGB

background_color="\[\033[48;2;21;20;27m\]"  # #15141b

foreground_color="\[\033[38;2;97;255;202m\]"  # #edecee

blue_color="\[\033[38;2;162;119;255m\]"  # #a277ff

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Set PS1 variable

PS1="${background_color}${foreground_color}\u@\h ${blue_color}\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "



#PS1='[\u@\h \W]\$ '
