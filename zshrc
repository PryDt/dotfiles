# The following lines were added by compinstall
zstyle :compinstall filename '/home/pry/.zshrc'
autoload -Uz compinit
compinit

# setting up prompt
autoload -Uz promptinit
promptinit
prompt redhat

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

# command not found
source /usr/share/doc/pkgfile/command-not-found.zsh

# for wal
(cat ~/.cache/wal/sequences &)

# aliases
alias vim=nvim
alias pls=sudo
alias yeet=rm -rf

# sourcing rust
source $HOME/.cargo/env
