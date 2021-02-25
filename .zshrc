export LANG=ja_JP.UTF-8
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
export PATH=$PATH:/home/linuxbrew/.linuxbrew/sbin

autoload -Uz colors
colors

bindkey -e

autoload -Uz compinit
compinit

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
