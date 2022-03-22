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
```bash
rm ~/.zshrc && rm -rf ~/.SpaceVim.d && mkdir ~/.SpaceVim.d/ \
       && ln -s ~/.dotfiles/.zshrc ~/.zshrc \
       && ln -s ~/.dotfiles/.SpaceVim.d/ ~/.SpaceVim.d \
       && ln -s ~/.dotfiles/.SpaceVim/autoload/myspacevim.vim ~/.SpaceVim/autoload/myspacevim.vim \
       && ln -s ~/.dotfiles/joplin ~/.config/joplin
```
