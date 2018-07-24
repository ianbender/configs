# .bashrc

# User specific aliases and functions
. .alias
# Bash
alias ls='ls -pla'
alias ..='cd ..'

# Projects
alias proj='cd /Users/ianbender/Projects/'

# Git
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gcdu='gcd && git pull && git fetch --all'
gpnb() {
  branch_name=$(git symbolic-ref --short HEAD)
  git push -u origin $branch_name
}

# Docker
alias docker-rebuild='proj && cd docker && git checkout develop && git pull && dub'
alias dsh='docker-compose exec app bash'
alias dub='docker-compose up -d --build'
alias dup='docker-compose up'

docker-cleanup() {
  if docker rm $(docker ps -q -f 'status=exited') &> /dev/null; then
    echo "Containers cleaned up..."
  else
    echo "No unused containers..."
  fi
  if docker rmi $(docker images -q -f "dangling=true") &> /dev/null; then
    echo "Images cleaned up..."
  else
    echo "No unused images..."
  fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
