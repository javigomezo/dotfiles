# dotfiles

# Prerequisites

[GNU Stow](https://www.gnu.org/software/stow/)

# How to use

```bash
cd ~
git clone --recurse-submodules -j8 git@github.com:javigomezo/dotfiles.git # Or https://github.com/javigomezo/dotfiles.git 
cd dotfiles
stow -nvt ~ zsh tmux fzf nvim
# If everything seems right
stow -vt ~ zsh tmux fzf nvim
```

# FZF
The general-purpose command-line fuzzy finder [fzf](https://github.com/junegunn/fzf)

# How to install

```bash
~/.config/fzf/install # Agree everything but modifying zshrc
```
