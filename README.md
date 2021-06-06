# dotfiles
Required packages: git, vim, zsh, man, openssh and a powerline font (e.g. adobe-source-code-pro-fonts)
YCM (if enabled) will additionally require: base-devel, cmake, python, mono, go, nodejs, jdk-openjdk, npm

This repo should be cloned after zsh is configured and oh-my-zsh is installed.

After installation zsh-syntax-highlighting should be cloned
```zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
and PlugInstall should be run:

```zsh
vim +PlugInstall +qall
```

This does not set up ssh keys, but does setup some ssh configuration.
