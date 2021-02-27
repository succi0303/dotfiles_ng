# zplug
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

# history
#setopt append_history
#setopt bang_hist
setopt extended_history
#setopt hist_allow_clobber
#setopt hist_beep
#setopt hist_expire_dups_first
setopt hist_fcntl_lock
#setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
#setopt hist_lex_words
setopt hist_no_functions
setopt hist_no_store
setopt hist_reduce_blanks
#setopt hist_save_by_copy
setopt hist_save_no_dups
#setopt hist_verify
setopt inc_append_history
setopt inc_append_history_time
setopt share_history
HISTSIZE=2000
SAVEHIST=1000000
HISTFILE=~/.zhistory
DIRSTACKSIZE=20
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-biginning-search-forward-end history-search-end
bindkey '^p' history-beginning-search-backward-end
bindkey '^n' history-biginning-search-forward-end
bindkey '^r' history-incremental-pattern-search-backward
bindkey '^s' history-incremental-pattern-search-forward

autoload -Uz colors
colors

bindkey -e

autoload -Uz compinit
compinit


export FZF_COMPLETION_OPTS='--reverse --height=40%'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"

[ -f ~/.zshrc_`uname` ] && .~/.zshrc_`uname`
