# Declare an associative array for key bindings
typeset -A key

# Define custom key bindings using direct escape sequences
key[Home]='^[[H'
key[End]='^[[F'
key[Insert]='^[[2~'
key[Delete]='^[[3~'
key[Up]='^[[A'
key[Down]='^[[B'
key[Left]='^[[D'
key[Right]='^[[C'
key[PageUp]='^[[5~'
key[PageDown]='^[[6~'
key[CtrlLeft]='^[[1;5D'
key[CtrlRight]='^[[1;5C'

# Apply the key bindings
[[ -n "${key[Home]}"      ]]  && bindkey  "${key[Home]}"      beginning-of-line
[[ -n "${key[End]}"       ]]  && bindkey  "${key[End]}"       end-of-line
[[ -n "${key[Insert]}"    ]]  && bindkey  "${key[Insert]}"    overwrite-mode
[[ -n "${key[Delete]}"    ]]  && bindkey  "${key[Delete]}"    delete-char
[[ -n "${key[Up]}"        ]]  && bindkey  "${key[Up]}"        up-line-or-history
[[ -n "${key[Down]}"      ]]  && bindkey  "${key[Down]}"      down-line-or-history
[[ -n "${key[Left]}"      ]]  && bindkey  "${key[Left]}"      backward-char
[[ -n "${key[Right]}"     ]]  && bindkey  "${key[Right]}"     forward-char
[[ -n "${key[PageUp]}"    ]]  && bindkey  "${key[PageUp]}"    beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]]  && bindkey  "${key[PageDown]}"  end-of-buffer-or-history
[[ -n "${key[CtrlLeft]}"  ]]  && bindkey  "${key[CtrlLeft]}"  backward-word
[[ -n "${key[CtrlRight]}" ]]  && bindkey  "${key[CtrlRight]}" forward-word
