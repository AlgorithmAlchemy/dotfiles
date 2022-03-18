# Dotfiles
My personal configuration files.

## Installation
### Prerequisites
```bash
# Fedora
sudo dnf install nvim python pip \
       neofetch \
       zsh zsh-syntax-highlighting autojump zsh-autosuggestions -y

# Ubuntu
sudo apt update && sudo apt install nvim python pip \
       neofetch \
       zsh zsh-syntax-highlighting autojump zsh-autosuggestions -y

# Distro-independent
pip install pynvim
curl -sLf https://spacevim.org/install.sh | bash
```

### Symlinks
```bash
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.SpaceVim.d/ ~/.SpaceVim.d/
ln -s ~/.dotfiles/.SpaceVim/autoload/myspacevim.vim ~/.SpaceVim/autoload/myspacevim.vim
ln -s ~/.dotfiles/joplin ~/.config/joplin
```
