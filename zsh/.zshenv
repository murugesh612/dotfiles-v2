# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/sbin:/usr/sbin:$PATH
export GOPATH=$HOME/PersonalProjects/golang
export PATH=$PATH:$GOPATH/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# export TERM='xterm-256color'
export TERM='xterm-kitty'
export VISUAL='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2024-03-10 11:32:59
export PATH="$PATH:/home/rico/.local/bin:/home/rico/development/flutter/bin"
export ANDROID_HOME=$HOME/Android/Sdk

export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export CHROME_EXECUTABLE=/sbin/google-chrome-stable