export LANG=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

# Plugins
source /opt/homebrew/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/zen.toml)"
