#-# Setup #-#
  eval "$(rbenv init - zsh)"
  eval "$(pyenv init --path)"

  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi

  plugins=(web $plugins)

  export PATH=$PATH:$HOME/Library/Python/3.8/bin
  export PATH=$PATH:$HOME/Documents/ngrok-bin
  export PATH=$PATH:$HOME/.rbenv/shims
  export ZSH="$HOME/.oh-my-zsh"
  export ANSIBLE_CONFIG=ansible.super.cfg

  ZSH_THEME="powerlevel10k/powerlevel10k"

  setopt AUTO_CD AUTO_PUSHD PUSHD_IGNORE_DUPS PUSHD_SILENT PUSHD_TO_HOME

  plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

  source $ZSH/oh-my-zsh.sh

  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

  export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
  export PATH=$PATH:/opt/homebrew/opt/mongodb-community@4.4/bin

  eval $(thefuck --alias)
  eval "$(rbenv init - zsh)"
  export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"

  bindkey -v
#-# puteS #-#

#-# Aliases #-#
  alias aws-getips-staging='aws ec2 describe-instances --region '\''eu-west-1'\'' --profile '\''default'\'' --query '\''Reservations[].Instances[].[InstanceId,InstanceType,PublicIpAddress,PrivateIpAddress,LaunchTime,Tags[?Key==`Name`]| [0].Value]'\'' --output table'
  alias aws-getips-production='aws ec2 describe-instances --region '\''eu-central-1'\'' --profile '\''default'\'' --query '\''Reservations[].Instances[].[InstanceId,InstanceType,InstanceState,PublicIpAddress,PrivateIpAddress,LaunchTime,Tags[?Key==`Name`]| [0].Value]'\'' --output table'
  alias aws-get-endpoint-production-rds='aws rds --region eu-central-1 describe-db-instances --query "DBInstances[*].Endpoint.Address"'
  alias vim="CC=/opt/homebrew/opt/llvm/bin/clang nvim"
  alias v="CC=/opt/homebrew/opt/llvm/bin/clang nvim"
  alias vi="CC=/opt/homebrew/opt/llvm/bin/clang nvim"
  alias email="neomutt"
  alias syncmail="mbsync -a"
#-# sesailA #-#

#-# Scripts #-# 
  alias ws="~/scripts/ws.sh"
  alias db="~/scripts/db.sh"
  alias remote="~/scripts/remote.sh"
#-# stpircS #-#

#-# Applications #-# 
  lapps() {
    lsd "/Applications/";
  }

  app() {
    open -a "/Applications/$1.app";
  }

  alias qb="open -a /Applications/qutebrowser.app"
#-# snoitacilppA #-#

