eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# git autocomplete
autoload -Uz compinit && compinit

# aliases
alias vim=nvim
alias ls='eza --icons'
alias ll='eza --icons -al'
alias tre='eza --icons -a --long --tree -I .git'
alias tree='eza --icons -a --long --tree -I .git'
alias tred='eza -aD --long --tree -I .git'
alias pn=pnpm
alias sourcez='source ~/.zshrc'
alias vimz='vim ~/dotfiles/.zshrc'
alias gui=lazygit
