# Dotfiles
We use [GNU Stow]() to symlink files to the home directory. 
This makes it easier to manage dotfiles such as `.zshrc`, `.vimrc`, etc.

Some dotfiles require programs to be installed follow the instructions below depending on your OS.

## Mac
[Install Homebrew](https://brew.sh/)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Add Homebrew Bundle to import/export
```bash
brew tap Homebrew/bundle
```
Import Brew Bundle
```bash
cd ~/dotfiles
brew bundle
```
Install Stow and symlink dotfiles
```bash
brew install stow
cd ~/dotfiles
stow .
```

### Exporting Brewfile
```bash
brew bundle dump
```

## General Setup
Add the following text to your `~/.gitconfig`
```
[include]
    path = .gitconfig.dotfiles
```

## Linux

Requirements
- [Add universe repository:](https://askubuntu.com/questions/148638/how-do-i-enable-the-universe-repository) `sudo add-apt-repository universe`
- [Nerd Font](https://www.nerdfonts.com/font-downloads): [How To On WSL/Windows](https://learn.microsoft.com/en-us/windows/terminal/tutorials/custom-prompt-setup#install-a-nerd-font)
- [Install eza](https://github.com/eza-community/eza/blob/main/INSTALL.md)
- [Install gcc:](https://stackoverflow.com/questions/62215963/how-to-install-gcc-and-gdb-for-wslwindows-subsytem-for-linux) `sudo apt-get install gcc -y`
- [Install neovim]( https://github.com/neovim/neovim/blob/master/INSTALL.md )
- Download and install Starship from here: https://starship.rs/install.sh
- [`sudo apt install zsh`](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [`sudo apt install stow`](https://www.gnu.org/software/stow/manual/stow.html)
- [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- [Install dotnet](https://learn.microsoft.com/en-gb/dotnet/core/install/linux-scripted-manual#scripted-install)
# Most Used Tools
- Arc
- Raycast
- Obsidian
- Itsycal
- Bartender
- Zsh
- Starship Prompt
- Orbstack
- Lazyvim
- Wezterm

# Notes
- Cool nerd font: [Iosevka](https://typeof.net/Iosevka/)
