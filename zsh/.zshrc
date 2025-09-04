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

# Spicetify
export PATH=$PATH:/home/avi/.spicetify


(cat ~/.cache/wal/sequences &)

wal-tile() {
    wal -n -i "$@"
    feh --bg-tile "$(< "${HOME}/.cache/wal/wal")"
}

source ~/.zsh/aliases
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="$HOME/scripts:$PATH"
export PATH="$HOME/.config/i3/scripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"

