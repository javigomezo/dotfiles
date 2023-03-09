if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ZSH=$HOME/.config/zsh
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/share/neovim/bin
export PATH=$PATH:$HOME/.local/share/pnpm
export PNPM_HOME=$HOME/.local/share/pnpm
export BAT_THEME="Nord"
export MANPAGER="sh -c 'col -bx | bat -l man -p'" # bat man :')

[ -d "$HOME/.kube" ] && export KUBECONFIG=$(ls -d $HOME/.kube/* | grep config- | tr '\n' ':')

export HISTSIZE=10000000
export SAVEHIST=10000000
export HISTFILE=$HOME/.zsh_history

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -U compinit
autoload -Uz zcalc

compinit

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"


# Aliases
source $ZSH/aliases/aliases.zsh

# Functions
source $ZSH/functions/firefox.zsh
if command -v fzf > /dev/null 2>&1; then
  source $ZSH/functions/fzf.zsh
fi

# Theme
source $ZSH/themes/powerlevel10k/powerlevel10k.zsh-theme

# Plugins
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/plugins/tmux/tmux.plugin.zsh
source $ZSH/plugins/sudo/sudo.plugin.zsh
source $ZSH/plugins/kubectl/kubectl.plugin.zsh


# bindkey
bindkey '^R' history-incremental-search-backward


test -r "~/.config/zsh/colors/nord_colors.zsh" && eval $(dircolors -b ~/.config/zsh/colors/nord_colors.zsh)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

if command -v nitch > /dev/null 2>&1; then
  clear;
  nitch
fi


# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
