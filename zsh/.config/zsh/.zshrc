# load configs
for config (~/.config/zsh/*.zsh) source $config

# bun completions
[ -s "/home/monpancak/.bun/_bun" ] && source "/home/monpancak/.bun/_bun"

# if used fzf install script 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
