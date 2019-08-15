# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PS1='\[[\033\][\[1;31;1m\]\u@\[\033[00m\]\h \[\033[1;34;1m\]\W\[\033[00m\]]# '
alias ag='ag --color-path "1;34" --color-match "30;46" --color-line-number "1;35"'
