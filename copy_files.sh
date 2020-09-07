#!/bin/bash

cp .bashrc ~/.bashrc
cp .git-prompt.sh ~/.git-prompt.sh
# cp ~/.vim .vim
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf

if [[ -f ~/.zshrc ]]; then
  cp .zshrc ~/.zshrc
fi

if [[ -f ~/.config/nvim/init.vim ]]; then
  cp init.vim ~/.config/nvim/init.vim
fi

