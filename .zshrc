if [[ $(uname) == "Linux" ]]; then
    export PATH="$PATH:/opt/nvim-linux64/bin"
    export PATH="$PATH:/home/tombrereton/.local/bin"
    export PATH="$PATH:/home/tombrereton/.dotnet"
fi

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# git autocomplete
autoload -Uz compinit && compinit

# aliases
alias vim=nvim
alias ls='eza --icons'
alias ll='eza --icons -al'
alias tre='eza --icons -a --long --tree -I ".git|obj|bin|node_modules"'
alias tree='eza --icons -a --long --tree -I ".git|obj|bin|node_modules"'
alias tred='eza -aD --long --tree -I ".git|obj|bin|node_modules"'
alias pn=pnpm
alias sourcez='source ~/.zshrc'
alias sourcet='tmux source ~/.config/tmux/tmux.conf'
alias vimz='vim ~/dotfiles/.zshrc'
alias gui=lazygit
type terraform >/dev/null 2>&1 && alias tf='terraform'

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
