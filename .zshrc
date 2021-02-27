source ~/.zplug/init.zsh
zplug "zplug/zplug", hook-build:"zplug --self-manage"

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
zplug load --verbose

export LANG=ja_JP.UTF-8
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/sbin

autoload -Uz colors
colors

bindkey -e

autoload -Uz compinit
compinit


export FZF_COMPLETION_OPTS='--reverse --height=40%'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"

[ -f ~/.zshrc_`uname` ] && .~/.zshrc_`uname`
