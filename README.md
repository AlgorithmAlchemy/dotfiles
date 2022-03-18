# Dotfiles
My personal configuration files.

## Installation
### Prerequisites
**Fedora**
```bash
sudo dnf install nvim python pip \
       neofetch \
       zsh zsh-syntax-highlighting autojump zsh-autosuggestions -y
pip install pynvim
```

### Symlinks
```bash
ln -s ~/.dotfiles/joplin ~/.config/joplin
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.SpaceVim.d/ ~/.SpaceVim.d/
ln -s ~/.dotfiles/.SpaceVim/autoload/myspacevim.vim ~/.SpaceVim/autoload/myspacevim.vim
```
