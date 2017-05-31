source ~/.zplug/init.zsh
source ~/.zsh_aliases

export CLICOLOR=1

# Git plugins
zplug "plugins/git", from:oh-my-zsh
zplug "k4rthik/git-cal"
zplug "peterhurford/git-aliases.zsh"
zplug "unixorn/git-extra-commands"

# Utility plugins
zplug "b4b4r07/enhancd", use:init.sh
zplug "zsh-users/zsh-history-substring-search"
zplug "gko/ssh-connect"
zplug "hlissner/zsh-autopair"
zplug "zsh-users/zsh-autosuggestions"
zplug "joepvd/zsh-hints"
zplug "supercrabtree/k"

# Visual plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zlsun/solarized-man"
zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, as:theme

# Miscellaneous plugins
zplug "b4b4r07/emoji-cli"

if [[ $OSTYPE == *darwin* ]]; then
	zplug "junegunn/fzf-bin", from:gh-r, as:command, rename-to:fzf, use:"*darwin*amd64*"
else
	zplug "junegunn/fzf-bin", from:gh-r, as:command, rename-to:fzf, use:"*linux*amd64*"
fi

if ! zplug check --verbose; then
	printf "Install plugins? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

zplug load
