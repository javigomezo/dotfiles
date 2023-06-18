alias src='source ~/.config/zsh/.zshrc' 

alias mkdir='mkdir -p'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

if command -v duf &> /dev/null
then
  alias df='duf'
fi

if command -v exa &> /dev/null
then
  alias ls='exa --color=always --icons --group-directories-first'
fi

alias la='ls -a'
alias li='ls -a | grep -i'
alias ll='ls -lh'
alias lla='ls -lah'
alias l='ls -l'


if command -v bat &> /dev/null
then
  alias cat='bat'
fi

if command -v nvim &> /dev/null
then
  alias vim='nvim'
fi

if command -v kubectl &> /dev/null
then
  alias k='kubectl'
  alias kubechange='kubectl config use-context '
  alias kubecontext='kubectl config get-contexts'
fi

if command -v nvidia-smi &> /dev/null
then
  alias nvidia-smi='watch -n 1 nvidia-smi'
fi
