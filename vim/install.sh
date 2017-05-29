#!/usr/bin/env bash

bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}Installing vim dotfiles...${normal}"

if [ -d "$HOME/.vim/bundle" ] && [ -f "$HOME/.vim/bundle/Vundle.vim" ]; then
	echo "Vundle already found at ~/.vim/bundle. Skipping Vundle installation."
else
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ -f "$HOME/.vimrc" ]; then
	echo "Existing ~/.vimrc found. Backing up to ~/.vimrc.backup."
	cp $HOME/.vimrc $HOME/.vimrc.backup
fi

cp .vimrc $HOME/.vimrc

echo "Done."
