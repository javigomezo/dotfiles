if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load locale
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set ZSH base path
export ZSH=$HOME/.config/zsh
export ZSH_CACHE_DIR=$HOME/.cache/zsh
mkdir -p $ZSH_CACHE_DIR

# Update path
export PATH=$PATH:$HOME/.local/bin
[ -d "$HOME/.cargo/bin" ] && export PATH=$PATH:$HOME/.cargo/bin
[ -d "$HOME/.config/fzf/bin" ] && export PATH=$PATH:$HOME/.config/fzf/bin
[ -d "$HOME/.local/share/nvim/mason/bin" ] && export PATH=$PATH:$HOME/.local/share/nvim/mason/bin/
export PATH=$PATH:$HOME/.local/share/neovim/bin
export PATH=$PATH:$HOME/.local/share/pnpm
export PNPM_HOME=$HOME/.local/share/pnpm

# Increase zsh history
export HISTSIZE=10000000
export SAVEHIST=10000000
export HISTFILE=$HOME/.zsh_history

# Configure bat (better cat)
export BAT_THEME="Nord"
export MANPAGER="sh -c 'col -bx | bat -l man -p'" # bat man :')

# Load all kube-config files
[ -d "$HOME/.kube" ] && export KUBECONFIG=$(/usr/bin/ls -d $HOME/.kube/* | grep config- | tr '\n' ':')


# Configure autocompletion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
(( ${fpath[(Ie)"$ZSH_CACHE_DIR/completions"]} )) || fpath=("$ZSH_CACHE_DIR/completions" $fpath)
autoload -U compinit
autoload -Uz zcalc

# Configure fzf
[[ $- == *i* ]] && source "$HOME/.config/fzf/shell/completion.zsh" 2> /dev/null
source "$HOME/.config/fzf/shell/key-bindings.zsh"

compinit


# Aliases
source $ZSH/aliases/aliases.zsh

# Functions
source $ZSH/functions/firefox.zsh

# Theme
# source $ZSH/themes/powerlevel10k/powerlevel10k.zsh-theme

# Set nord colors
test -r "~/.config/zsh/colors/nord_colors.zsh" && eval $(dircolors -b ~/.config/zsh/colors/nord_colors.zsh)

# Plugins
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source $ZSH/plugins/tmux/tmux.plugin.zsh
source $ZSH/plugins/sudo/sudo.plugin.zsh
source $ZSH/plugins/kubectl/kubectl.plugin.zsh


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
  if command -v nitch > /dev/null 2>&1; then
    clear;
    nitch
  fi
fi

# Nitch greetings if it is an interactive shell
if [[ $- == *i* ]] && command -v nitch > /dev/null; then
  clear;
  nitch
fi

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
# [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
eval "$(starship init zsh)"
