if (( $+commands[kubectl] )); then
    __KUBECTL_COMPLETION_FILE="${ZSH_CACHE_DIR}/completions/_kubectl"

    if [[ ! -f $__KUBECTL_COMPLETION_FILE ]]; then
        mkdir -p "${ZSH_CACHE_DIR}/completions"
        kubectl completion zsh >! $__KUBECTL_COMPLETION_FILE
    fi

    [[ -f $__KUBECTL_COMPLETION_FILE ]] && source $__KUBECTL_COMPLETION_FILE

    unset __KUBECTL_COMPLETION_FILE
fi
