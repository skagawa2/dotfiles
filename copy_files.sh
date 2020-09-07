#!/bin/bash

cp .bashrc ~/.bashrc
cp .git-prompt.sh ~/.git-prompt.sh
# cp ~/.vim .vim
cp .vimrc ~/.vimrc
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/undo
cp .tmux.conf ~/.tmux.conf

# setup tmux plugin manager
if [[ ! -f ~/.tmux/plugins/tpm/tpm ]]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if [[ -f ~/.zshrc ]]; then
  cp .zshrc ~/.zshrc
fi

if [[ -f ~/.config/nvim/init.vim ]]; then
  cp init.vim ~/.config/nvim/init.vim
else
  echo "not using nvim?"
fi

