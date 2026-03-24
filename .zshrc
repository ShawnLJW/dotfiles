# aliases
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# configure shell history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# pnpm
export PNPM_HOME="/home/shawn/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# file navigation
eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# autocomplete
autoload -Uz compinit
compinit

# plugins
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# shell prompt
eval "$(starship init zsh)"

