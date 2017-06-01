#!/usr/bin/env bash

bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}Installing zsh dotfiles...${normal}"

if [[ $SHELL != *zsh ]]; then
	echo "You're not using ZSH, silly! Exiting..."
	exit 1
fi

if [ -d "$HOME/.zplug" ] && [ -f "$HOME/.zplug/init.zsh" ]; then
	echo "zplug already found at ~/.zplug. Skipping zplug installation."
else
	curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh	
fi

cp -v --backup .zshrc $HOME/.zshrc
cp -v --backup .zsh_aliases $HOME/.zsh_aliases

echo "Done. Don't forget to source!"
