alias rm="rm -i"
alias ll="ls -lah"
alias screen="byobu-screen"

export TERM=screen-256color
force_color_prompt=yes
export SCREENRC="~/.screenrc"
export BYOBU_PYTHON='/usr/bin/env python'
export PATH=/Users/skagawa/byobu/bin:/Users/skagawa/byobu/bin:/Users/skagawa/byobu/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/skagawa/Library/Python/2.7/bin

export PS1="\[\033[38;5;2m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;9m\]\h\[$(tput sgr0)\]:[\[$(tput sgr0)\]\[\033[38;5;27m\]\w\[$(tput sgr0)\]]\\$ \[$(tput sgr0)\]"

