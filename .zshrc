# Attach to tmux session "default" or start it
if [ -z "$TMUX" ]
then
    tmux attach -t default || tmux new -s default
fi

#Fortune, Cowsay
fortune | cowsay -f tux

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Path to your oh-my-zsh installation.
export ZSH="/Users/anuragroy/.oh-my-zsh"

# Path to brew installed Git instead of Apple-Git
export PATH="/usr/local/git/bin:$PATH"

export PATH="/Users/anuragroy/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PNPM_HOME="/Users/anuragroy/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH="/Users/anuragroy/.deno/bin:$PATH"

export PATH="/Users/anuragroy/Library/Python/3.9/bin:$PATH"

export BAT_THEME="ansi"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(macos zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# tabtab source for packages
# uninstall by removing these lines
#[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

alias brewup="brew update && brew upgrade"

# CLI aliases
alias ls="exa"
alias tree="exa --tree"
alias cat="bat"
alias lg="lazygit"
alias z="zoxide"

# Development aliases
alias c="code ."
alias ci="code-insiders ."
alias m="micro"

alias pi="pnpm install"
alias pd="pnpm dev"
alias pb="pnpm build"
alias ps="pnpm serve"

#Git aliases
alias gitclean='git branch | grep -v "master" | xargs git branch -D && git remote prune origin'
alias gitlog='git log --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"'

# `tunnel 8000` will tunnel https://local.anuragroy.dev to http://localhost:8000
tunnel() {
  cloudflared tunnel run --url http://localhost:$1 local
}
