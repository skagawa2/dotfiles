alias rm="rm -i"
alias ll="ls -lah"
alias screen="byobu-screen"

export TERM=screen-256color
force_color_prompt=yes
export SCREENRC="~/.screenrc"
export BYOBU_PYTHON='/usr/bin/env python'
export PATH=/Users/skagawa/byobu/bin:/Users/skagawa/byobu/bin:/Users/skagawa/byobu/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/skagawa/Library/Python/2.7/bin

source ~/.git-prompt.sh
export PS1="\[\e[38;5;1m\]\u\e[m@\[\e[38;5;202m\]\h \e[38;5;4m\][\[\w]\e[38;5;202m\]$(__git_ps1 ' (%s)')\e[m\n\\$ \e[m"

