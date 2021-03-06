export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export ZSH="/home/linh/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git rails ruby zsh-autosuggestions tmux zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='vim'
 fi

# Git alias
alias gl1="git log --oneline --decorate --color"
alias gcm="git commit -m"
alias gcmn="git commit -v -a --no-edit --amend"
alias gcma="git commit -v --amend"

# alias clear screen in terminal
alias cl="clear"

# Nvim alias
alias nv="nvim"

# rails alias
alias rdmr="rails db:migrate:reset"
alias gclf="git clean -f"
alias gstai="git stash --include-untracked"
alias be="bundle exec"
alias ru="rubocop"
alias beru="bundle exec rubocop"
alias bers="bundle exec rspec"

# 
eval `dircolors ~/.solarized/dircolors.ansi-dark`

# 
export DEFAULT_USER="$(whoami)"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=blue'
