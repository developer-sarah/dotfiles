eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export MANPAGER="nvim +Man!"

alias makep="~/Library/Mobile\ Documents/com\~apple\~CloudDocs/makepatch.sh"
alias applyp="~/Library/Mobile\ Documents/com\~apple\~CloudDocs/applypatch.sh"
alias ls="eza"
alias la="ls -la"
alias tree="eza --tree"
alias cd="z"
alias edz="nvim ~/.zshrc"
alias soz="source ~/.zshrc"

alias gs="git status"

eval "$(starship init zsh)"
export PATH=/Library/PostgreSQL/18/bin:$PATH

source <(fzf --zsh)

export FZF_DEFAULT_OPTS="--bind 'tab:down' --bind 'shift-tab:up' --bind 'ctrl-space:toggle' --bind 'ctrl-]:toggle-input'"

eval "$(zoxide init zsh)"
