# Path to your oh-my-zsh installation.
export ZSH="/Users/anuragroy/.oh-my-zsh"

# Path to brew installed Git instead of Apple-Git
export PATH="/usr/local/git/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  exec_time     # Execution time
  char          # Prompt character
)

SPACESHIP_CHAR_SYMBOL='❯ '

# DIR
SPACESHIP_DIR_TRUNC_REPO='false'
SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC='0' # show only last directory
SPACESHIP_DIR_COLOR="green"

# GIT
SPACESHIP_GIT_PREFIX=""
SPACESHIP_GIT_SUFFIX=""
SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
SPACESHIP_GIT_BRANCH_COLOR="magenta"
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=" "
SPACESHIP_GIT_STATUS_COLOR="magenta"

plugins=(macos)

source $ZSH/oh-my-zsh.sh
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#Git remove all local feature branches
alias gitClean="git branch | grep -v "master" | xargs git branch -D && git remote prune origin"

export PNPM_HOME="/Users/anurag/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

export PATH="/Users/anurag/.deno/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

export BAT_THEME="ansi"

alias ls="exa"
alias cat="bat"

alias c="code ."
alias ci="code-insiders ."

alias pi="pnpm install"
alias pd="pnpm dev"
alias pb="pnpm build"
alias ps="pnpm serve"

#Fortune, Cowsay
fortune | cowsay -f tux