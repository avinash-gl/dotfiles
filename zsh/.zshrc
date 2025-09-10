# ~/.zshrc

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Enable completion
autoload -Uz compinit && compinit

# Path
export PATH="$HOME/bin:$PATH"

# Starship prompt
eval "$(starship init zsh)"

# Fastfetch on startup
fastfetch

# Pywal
(cat ~/.cache/wal/sequences &)

wal-tile() {
    wal -n -i "$@"
    feh --bg-tile "$(< "${HOME}/.cache/wal/wal")"
}

export PATH="$HOME/.local/bin:$PATH"

# External Links
source ~/.zsh/aliases
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



