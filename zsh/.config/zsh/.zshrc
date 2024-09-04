# dietpi 
[ -d "/boot/dietpi" ] && export PATH=/usr/bin:/boot/dietpi:/bin:/usr/sbin:/sbin:$PATH

# load configs
for config (~/.config/zsh/*.zsh) source $config

# bun completions
[ -s "/home/monpancak/.bun/_bun" ] && source "/home/monpancak/.bun/_bun"

# if used fzf install script 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# dietpi. Could be put in .zlogin
[ -d "/boot/dietpi" ] && /boot/dietpi/dietpi-login
