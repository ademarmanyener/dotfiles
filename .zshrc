# Activating Vi mode
bindkey -v
export KEYTIMEOUT=1

# Changing cursor
cursor_mode() {
    # See https://ttssh2.osdn.jp/manual/4/en/usage/tips/vim.html for cursor shapes
    cursor_block='\e[2 q'
    cursor_beam='\e[6 q'

    function zle-keymap-select {
        if [[ ${KEYMAP} == vicmd ]] ||
            [[ $1 = 'block' ]]; then
            echo -ne $cursor_block
        elif [[ ${KEYMAP} == main ]] ||
            [[ ${KEYMAP} == viins ]] ||
            [[ ${KEYMAP} = '' ]] ||
            [[ $1 = 'beam' ]]; then
            echo -ne $cursor_beam
        fi
    }

    zle-line-init() {
        echo -ne $cursor_beam
    }

    zle -N zle-keymap-select
    zle -N zle-line-init
}

#cursor_mode # Uncomment to enable it

# For non-pattern search like in bash 
# bindkey "^R" history-incremental-search-backward`
# for pattern search (the wildcard `*` will use zsh completion)
bindkey "^R" history-incremental-pattern-search-backward

# Vim mapping for completion
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Editing command lines in Vim
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd V edit-command-line

# Adding text objects
autoload -Uz select-bracketed select-quoted
zle -N select-quoted
zle -N select-bracketed
for km in viopp visual; do
  bindkey -M $km -- '-' vi-up-line-or-history
  for c in {a,i}${(s..)^:-\'\"\`\|,./:;=+@}; do
    bindkey -M $km $c select-quoted
  done
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $km $c select-bracketed
  done
done

export PROMPT='%B[%n@%2~]%b $ '
export EDITOR="vim"
export PATH=$PATH:/home/arman/.local/bin

# Linux version of OSX pbcopy and pbpaste.
alias clipboard="xsel -ib"
alias vi="vim"
alias top="htop"
alias ls="ls --color=auto"

# Automatically start Tmux
case $- in *i*)
  if [ -z "$TMUX" ]; then exec tmux; fi;;
esac
