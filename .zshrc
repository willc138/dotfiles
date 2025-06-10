# Disable oh-my-zsh updates.
zstyle ':omz:update' mode disabled

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Export path to scripts and plugins
export PATH="$PATH:$HOME/.vim/plugged/vim-superman/bin"
export PATH="$PATH:$HOME/.git-scripts"

# Export QEMU default URI.
export LIBVIRT_DEFAULT_URI="qemu:///system"

# Export kubeconfig location
export KUBECONFIG=~/.kube/config

# Start the ssh agent if it isn't currently running. ## NEEDS REVIEW
# [ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)" > /dev/null 2>&1

# Set the directory colours.
eval `dircolors ~/.dircolors/dircolors.256dark`

# Set name of the theme to load.
ZSH_THEME="agnoster"

# Set the plugins to load.
plugins=(archlinux sudo git kubectl kube-ps1 fluxcd)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Aliases.
alias kon="kubeon"
alias koff="kubeoff"
alias dcup="sudo docker compose up -d --remove-orphans"
alias dcdown="sudo docker compose down --remove-orphans"
alias dcpull="sudo docker compose pull"
alias dcres="sudo docker compose restart"

# Syntax highlighting.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Configure kubectl prompt.
export PROMPT='$(kube_ps1)'$PROMPT
kubeoff

