#!/usr/bin/env bash

bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}Installing ZSH dotfiles...${normal}"

if [ "$SHELL" != "/usr/bin/zsh" ]; then
	echo "You're not using ZSH, silly! Exiting..."
	exit 1
fi

if [ -d "$HOME/.zsh/antigen" ] && [ -f "$HOME/.zsh/antigen/antigen.zsh" ]; then
	echo "Antigen already found at ~/.zsh/antigen. Skipping Antigen installation."
else
	mkdir -p $HOME/.zsh/antigen
	curl -L git.io/antigen > $HOME/.zsh/antigen/antigen.zsh
fi

if [ -f "$HOME/.zshrc" ]; then
	echo "Existing ~/.zshrc found. Backing up to ~/.zshrc.backup."
	cp $HOME/.zshrc $HOME/.zshrc.backup
fi

cp .zshrc $HOME/.zshrc

source $HOME/.zshrc
