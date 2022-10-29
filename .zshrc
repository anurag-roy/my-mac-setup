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

export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/anuragroy/Library/pnpm:$PATH"
export PATH="/Users/anuragroy/.deno/bin:$PATH"

export BAT_THEME="ansi"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(macos zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# tabtab source for packages
# uninstall by removing these lines
#[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# CLI aliases
alias ls="exa"
alias cat="bat"

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
alias gitlog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"'