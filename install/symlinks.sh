#!/bin/bash

# Create Symlinks
echo -e "\nInstalling Symlinks...\n"

# ZSH
ln -fsv ~/.config/zsh/zshrc ~/.zshrc
ln -fsv ~/.config/zsh/zsh-update ~/.zsh-update
#ln -fsv ~/.config/zsh/zsh-history ~/.zsh-history

# Yarn
ln -fsv ~/.config/yarn/yarnrc ~/.yarnrc

# Editors
ln -fsv ~/.config/atom ~/.atom
ln -fsv ~/.config/vim/plugins ~/.vim
ln -fsv ~/.config/vim/vimrc ~/.vimrc
cp -v ~/.config/vim/viminfo ~/.viminfo

# Calendar (calcurse)
ln -s ~/.config/calcurse ~/.calcurse