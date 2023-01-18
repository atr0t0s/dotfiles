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

alias aws-getips-staging='aws ec2 describe-instances --region '\''eu-west-1'\'' --profile '\''default'\'' --query '\''Reservations[].Instances[].[InstanceId,InstanceType,PublicIpAddress,PrivateIpAddress,LaunchTime,Tags[?Key==`Name`]| [0].Value]'\'' --output table'
alias aws-getips-production='aws ec2 describe-instances --region '\''eu-central-1'\'' --profile '\''default'\'' --query '\''Reservations[].Instances[].[InstanceId,InstanceType,InstanceState,PublicIpAddress,PrivateIpAddress,LaunchTime,Tags[?Key==`Name`]| [0].Value]'\'' --output table'
alias aws-get-endpoint-production-rds='aws rds --region eu-central-1 describe-db-instances --query "DBInstances[*].Endpoint.Address"'
alias vim="nvim"
alias v="nvim"
alias vi="nvim"
alias email="neomutt"
alias syncmail="mbsync -a"

alias sshjenkins="sshpass -f ~/.pwspectre ssh jenkins"
alias sshescape="ssh escape"
alias sshspectre="sshpass -f ~/.pwspectre ssh spectre"
alias sshspectrepreprod="sshpass -f ~/.pwpreprod ssh spectre-preprod"
alias sshsgpreprod="ssh sg-preprod"
alias sshsg="sshpass -f ~/.pwlive ssh sg-live"
alias sshsgdb="sshpass -f ~/.pwlive ssh sg-live-db"
alias sshphoenix="sshpass -f ~/.pwphoenix ssh phoenix"
alias hm="cd ~"
alias ls="lsd"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:/opt/homebrew/opt/mongodb-community@4.4/bin

eval $(thefuck --alias)
eval "$(rbenv init - zsh)"
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
