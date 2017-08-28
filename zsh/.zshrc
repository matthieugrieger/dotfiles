source ~/.zplug/init.zsh

zplug "unixorn/git-extra-commands", from:github                                                  
zplug "molovo/tipz", from:github
zplug "chrissicool/zsh-256color", from:github
zplug "hlissner/zsh-autopair", from:github
zplug "zsh-users/zsh-autosuggestions", from:github
zplug "zsh-users/zsh-completions", from:github
zplug "marzocchi/zsh-notify", from:github
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting", defer:2, from:github
zplug "plugins/git", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install new plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

export EDITOR=vim
export VISUAL=vim
export TIPZ_TEXT="!"
