alias rm="rm -i"
alias ll="ls -lah"
alias screen="byobu-screen"

export TERM=screen-256color
force_color_prompt=yes
export SCREENRC="~/.screenrc"
export BYOBU_PYTHON='/usr/bin/env python'
export PATH=/Users/skagawa/byobu/bin:/Users/skagawa/byobu/bin:/Users/skagawa/byobu/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/skagawa/Library/Python/2.7/bin

export PS1="\[\033[38;5;2m\]\u\[\033[38;5;0m\]@\[\033[38;5;0m\]\[\033[38;5;9m\]\h\[\033[38;5;0m\]:[\[\033[38;5;0m\]\[\033[38;5;27m\]\w\[\033[38;5;0m\]]\\$ \[\033[38;5;0m\]"
