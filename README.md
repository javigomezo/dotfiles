# dotfiles

# How to use

```bash
cd ~
git clone git@github.com:javigomezo/dotfiles.git # Or https://github.com/javigomezo/dotfiles.git 
cd dotfiles
stow -nvt ~ zsh
# If everything seems right
stow -vt ~ zsh
echo "source $HOME/.config/zsh/.zshrc" > $HOME/.zshenv
```
