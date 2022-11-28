# Dotfiles
My personal configuration files.

## Installation
### Prerequisites
```bash
# Fedora
sudo dnf install neovim python pip \
       xfonts-utils \
       nodejs \
       neofetch \
       zsh zsh-syntax-highlighting autojump zsh-autosuggestions -y

# Ubuntu
sudo apt update && sudo apt install neovim python-is-python3 python3-pip \
       neofetch \
       zsh zsh-syntax-highlighting autojump zsh-autosuggestions -y

# Distro-independent
pip install pynvim \
       && curl -sLf https://spacevim.org/install.sh | bash \
       && NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin \
       && sudo ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin
```

### Symlinks
Remove symlinks if they exist
```bash
rm ~/.zshrc \
       && rm -rf ~/.SpaceVim.d \
       && rm ~/.SpaceVim/autoload/myspacevim.vim \
       && rm -rf ~/.config/joplin
```

Create symlinks
```bash
ln -s ~/.dotfiles/.zshrc ~/.zshrc \
       && ln -s ~/.dotfiles/.SpaceVim.d/ ~/.SpaceVim.d \
       && ln -s ~/.dotfiles/.SpaceVim/autoload/myspacevim.vim ~/.SpaceVim/autoload/myspacevim.vim \
       && ln -s ~/.dotfiles/joplin ~/.config/joplin
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
