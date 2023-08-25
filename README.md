# Dotfiles
My personal configuration files.

## Installation
### Prerequisites
```bash
# Fedora
sudo dnf install neovim python pip \
       xfonts-utils \
       neofetch \
       zsh zsh-syntax-highlighting autojump zsh-autosuggestions -y

# Ubuntu
sudo apt update && sudo apt install python-is-python3 python3-pip \
       neofetch \
       zsh zsh-syntax-highlighting autojump zsh-autosuggestions -y
```

### Symlinks
Remove symlinks if they exist
```bash
rm ~/.zshrc
```

Create symlinks
```bash
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```

### ZSH setup
```bash
touch "$HOME/.cache/zshhistory"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
chsh $USER # answer prompt with "/bin/zsh"
```

[Oh My Posh Installation](https://ohmyposh.dev/docs/installation/linux)
[Nala Installation and Config](https://christitus.com/stop-using-apt/)
