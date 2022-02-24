stty -ixon

# EDITOR
export EDITOR="subl -wn"

# PATH


# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# RBENV
PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - bash)"

# ZSH
export ZSH="/home/alistair/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# ---

unalias gcm

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'

alias a='cd ~/Desktop/Work/alistair'
alias api='json-server --watch'
alias b='bundle'
alias be='bundle exec'
alias besp='bundle exec rspec'
alias config='subl --launch-or-new-window ~/.zshrc'
alias cx='chmod +x'
alias d='cd ~/Desktop'
alias dl='cd ~/Downloads'
alias fs='foreman start'
alias ga='git add'
alias ga.='git add .'
alias gaa='git add -A'
# alias gcm='git commit -m'
alias gcmi='git commit -m "Initial commit"'
alias gi='git init'
alias gl='git log'
alias gs='git status'
alias md='mkcd'
alias mk='mkdir'
alias mkdir='mkdir -p'
alias pg='sudo -u postgres psql'
alias rb='ruby'
alias rc='rails console'
alias rdc='rails db:create'
alias rdd='rails db:drop'
alias rde='rails db:environment:set RAILS_ENV=development'
alias rdm='rails db:migrate'
alias rdr='rails db:reset'
alias rds='rails db:seed'
alias reload='source ~/.zshrc'
alias rf='rm -rf'
alias rg='rails generate'
alias rm='rm -I --preserve-root'
alias rp='rubocop'
alias rpa='rubocop -A'
alias rpg='rubocop --auto-gen-config'
alias rs='rails server'
alias s='subl --launch-or-new-window'
alias s.='subl --launch-or-new-window .'
alias sp='rspec'
alias w='cd ~/Desktop/Work'
alias x='exit'
alias railsbot='ruby ~/Software/railsbot/bin/railsbot'

mkcd () { if [[ ! -z $1 ]]; then mkdir -p -- "$1" && cd -P -- "$1"; fi }
gcm () { if [[ ! -z $1 ]]; then git commit -m "$*"; else echo "You must provide a commit message"; fi }
