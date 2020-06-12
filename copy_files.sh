#!/bin/bash

cp .bashrc ~
cp .git-prompt.sh ~
cp -r .vim ~
cp .vimrc ~

if [[ -f ~/.zshrc ]];
  then cp .zshrc ~
fi
