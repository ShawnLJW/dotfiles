# Dotfiles

## Setup on a new system

```bash
git clone --bare <git-repo-url> $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

## Making changes

Use the dotfiles alias with normal git commands:

```bash
dotfiles status
dotfiles add .zshrc
dotfiles commit -m "add .zshrc"
dotfiles push
```
