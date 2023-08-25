alias winget="winget.exe"
alias explorer="explorer.exe"
alias zshrc="code ~/.zshrc"
alias vimrc="vim ~/.SpaceVim.d/init.toml"
alias myspacevim="vim ~/.SpaceVim/autoload/myspacevim.vim"
alias ll="ls -al"

export SWIFT_HOME="/mnt/c/Users/Johannes/"
export IDL_HOME="/mnt/c/Users/copelandhasche/"

neofetch

# Oh My Posh
eval "$(oh-my-posh init zsh --config ~/.poshthemes/mojada.omp.json)"

# Replace APT with Nala
apt() { 
  command nala "$@"
}
sudo() {
  if [ "$1" = "apt" ]; then
    shift
    command sudo nala "$@"
  else
    command sudo "$@"
  fi
}

# bun completions
[ -s "/home/johannes/.bun/_bun" ] && source "/home/johannes/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Load Angular CLI autocompletion.
source <(ng completion script)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"