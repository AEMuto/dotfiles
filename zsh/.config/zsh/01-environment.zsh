# Created by `pipx` on 2024-07-19 09:40:23
export PATH="$PATH:/home/monpancak/.local/bin"

# home
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CACHE_HOME="$HOME"/.local/cache
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:=/tmp}"
export TMPDIR="$XDG_RUNTIME_DIR"
export ZDOTDIR="$HOME"/.config/zsh
export GNUPGHOME="$XDG_DATA_HOME"/gpg

# fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

# NNN
export NNN_PLUG='p:preview-tui;v:imgview;m:cmusq;s:suedit;o:organize;'
export NNN_BMS="e:/run/media/monpancak/WD_BLACK;d:~/Downloads;D:~/Documents;m:~/Music;p:~/Pictures;v:~/Videos;c:~/Code;g:~/Google Drive;n:/mnt/exfat;h:$HOME;.:~/.config"
# This second option relies on you're terminal using the catppuccin theme and well use true catppuccin colors:
BLK="03" CHR="03" DIR="04" EXE="02" REG="07" HARDLINK="05" SYMLINK="05" MISSING="08" ORPHAN="01" FIFO="06" SOCK="03" UNKNOWN="01"
# Export Context Colors
export NNN_COLORS="#04020301;4231"
# Finally Export the set file colors ( Both options require this)
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$UNKNOWN"
# pager
export BAT_THEME="Catppuccin_Macchiato"
export BAT_STYLE="plain"
export BAT_CONFIG_PATH="$HOME/.config/bat/config"
export BAT_CACHE_PATH="$HOME/.local/cache/bat"
export BAT_PAGER="less -P?n -R -C -S"
export NNN_BATTHEME="$BAT_THEME" # Necessary, otherwise overwritten by default value in preview-tui plugin
export NNN_PAGER="$BAT_PAGER"
export NNN_BATSTYLE="$BAT_STYLE"

# fontpreview
export FONTPREVIEW_SEARCH_PROMPT="-> "
# export FONTPREVIEW_SIZE=532x365
# export FONTPREVIEW_POSITION="+0+0"
# export FONTPREVIEW_FONT_SIZE=38
export FONTPREVIEW_BG_COLOR="#24273A"
export FONTPREVIEW_FG_COLOR="#EED49F"

# man
# export MANPAGER='nvim --cmd ":lua vim.g.noplugins=1" +Man!'
# export MANWIDTH=999

# preferred text editor
# export EDITOR=nvim
# export VISUAL=nvim

# language
# export LC_COLLATE=en_US.UTF-8
# export LC_CTYPE=en_US.UTF-8
# export LC_MESSAGES=en_US.UTF-8
# export LC_MONETARY=en_US.UTF-8
# export LC_NUMERIC=en_US.UTF-8
# export LC_TIME=en_US.UTF-8
# export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8
# export LANGUAGE=en_US.UTF-8
# export LESSCHARSET=utf-8

GPG_TTY=$(tty)
export GPG_TTY
