function ssh_tmux() { ssh -t "$1" "tmux a || tmux"; }

function change_font_family() {
  local new_font_family_name=$1
  local old_font_path=$2
  # Check if both arguments are provided
  if [[ -z "$new_font_family_name" || -z "$old_font_path" ]]; then
    echo "Usage: rename_font <new_font_family_name> <old_font_path>"
    return 1
  fi
  # Rename the font family name
  python ~/.scripts/fontname.py "$new_font_family_name" "$old_font_path"
}

function xtr() {
  local archive=$1
  local destination=$2

  # Check if both arguments are provided
  if [[ -z "$archive" || -z "$destination" ]]; then
    echo "Usage: extract_to <archive> <destination>"
    return 1
  fi

  # Create the destination directory if it doesn't exist
  mkdir -p "$destination"

  # Extract the archive
  bsdtar -xvf "$archive" -C "$destination"
}

# use n to start nnn + configure cd on quit
function n() {
  # Block nesting of nnn in subshells
  [ "${NNNLVL:-0}" -eq 0 ] || {
      echo "nnn is already running"
      return
  }
  # Last visited directory
  export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
  command nnn -radHUB $@

  [ ! -f "$NNN_TMPFILE" ] || {
      . "$NNN_TMPFILE"
      rm -f -- "$NNN_TMPFILE" > /dev/null
  }
}

# Function to move backward by word and start selection
backward_word_select() {
    zle set-mark-command
    zle backward-word
}
# Function to move forward by word and start selection
forward_word_select() {
    zle set-mark-command
    zle forward-word
}

# Bind the custom function to the escape sequence
bindkey '^[[1;7D' backward_word_select
bindkey '^[[1;7C' forward_word_select

# Ensure the custom widget is recognized
zle -N backward_word_select
zle -N forward_word_select
