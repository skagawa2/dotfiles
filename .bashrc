echo "Hello there!"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/skagawa2/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/skagawa2/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/skagawa2/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/skagawa2/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

conda deactivate
conda activate py27
# <<< conda initialize <<<


alias rm="rm -i"
alias ll="ls -lah"
alias screen="byobu-screen"

export TERM=screen-256color
force_color_prompt=yes
export SCREENRC="~/.screenrc"
