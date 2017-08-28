#!/usr/bin/env bash

bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}Installing vim dotfiles...${normal}"

echo "${bold}Installing pathogen...${normal}"
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "${bold}Installing plugins...${normal}"

plugins=$(<plugins.txt)
cd ~/.vim/bundle
while read -r plugin
do
    git clone git://github.com/${plugin}
done <<< "$plugins"

if [ -f "$HOME/.vimrc" ]; then
	echo "Existing ~/.vimrc found. Backing up to ~/.vimrc.backup."
	cp $HOME/.vimrc $HOME/.vimrc.backup
fi

cd -

cp .vimrc $HOME/.vimrc

echo "Done."
