# Lines configured by zsh-newuser-install
HISTFILE=~/.zshist
HISTSIZE=1000
SAVEHIST=2048
setopt appendhistory autocd extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/aasen/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U promptinit && promptinit
autoload -U colors && colors

if [ -f ~/.dir_colors ]; then
    eval `dircolors ~/.dir_colors`
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim

# setting prompt colors
if [ -n "$SSH_CLIENT" ]; then
    PS1="%{$fg[green]%}%B%m%b {%{$reset_color%}%{$fg[white]%}%{$reset_color%}%~} "
else
    PS1="%{$fg[black]%}%B%m%b {%{$reset_color%}%{$fg[white]%}%{$reset_color%}%~} "
fi

# load useful aliases which are stored in a different file
# so that they can be used with bash and zsh 
source ~/.aliases
