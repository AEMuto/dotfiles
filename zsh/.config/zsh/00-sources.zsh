# Powerlevel10k theme
source ~/.config/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/themes/.p10k.zsh
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
# rbenv
eval "$(rbenv init - zsh)"
# Plugins
## zsh-nvm
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
export NVM_LAZY_LOAD_EXTRA_COMMANDS=('code' 'subl' 'atom' 'vim' 'nvim')
export NVM_AUTO_USE=true
source ~/.config/zsh/plugins/zsh-nvm/zsh-nvm.plugin.zsh
## zsh-autosuggestions
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
