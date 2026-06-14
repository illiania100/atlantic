HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'

fastfetch

PROMPT='%F{cyan}%~
%F{green}%n%F{blue}$%f '
RPROMPT='%F{yellow}${vcs_info_msg_0_}%f'