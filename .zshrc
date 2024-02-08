eval "$(starship init zsh)"

# git autocomplete
autoload -Uz compinit && compinit

# aliases
alias vim=nvim
alias ls='eza --icons'
alias ll='eza --icons -al'
alias pn=pnpm
alias sourcez='source ~/.zshrc'
alias vimz='vim ~/.zshrc'
alias cdh='cd ~'
alias gui=lazygit
