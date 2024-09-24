# ZSH Config
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  This loads nvm bash_completio
  eval "$(rbenv init - zsh)"
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv init --path)"
#  
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi
#  
  plugins=(web $plugins)
#  
  export PATH=$PATH:$HOME/Library/Python/3.8/bin
  export PATH=$PATH:/opt/homebrew/bin/ngrok
  export PATH=$PATH:$HOME/.rbenv/shims
  export ZSH="$HOME/.oh-my-zsh"
  export PATH=$PATH:/Applications/Julia-1.8.app/Contents/Resources/julia/bin
  export ANSIBLE_CONFIG=ansible.super.cfg
  export DENO_INSTALL="/Users/georgeviolaris/.deno"
  export PATH="$DENO_INSTALL/bin:$PATH"
  export PATH=$PATH:$HOME/.composer/vendor/hjbdev/pvm
# export TERM=xterm-256color
#  
  ZSH_THEME="powerlevel10k/powerlevel10k"
#  
  setopt AUTO_CD AUTO_PUSHD PUSHD_IGNORE_DUPS PUSHD_SILENT PUSHD_TO_HOME
#  
  plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
#  
  source $ZSH/oh-my-zsh.sh
#  
  EDITOR='nvim'
#
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#  
  export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
  export PATH=$PATH:/opt/homebrew/opt/mongodb-community@4.4/bin
  export PATH="$HOME/.composer/vendor/bin:$PATH"

#  
  eval $(thefuck --alias)
  eval "$(rbenv init - zsh)"
  export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
#  
  bindkey -v
#  
  alias aws-getips-staging='aws ec2 describe-instances --region '\
    \''eu-west-1'\'' --profile '\''default'\'' --query '\
    \''Reservations[].Instances[].[InstanceId,InstanceType,PublicIpAddress,'\
    'PrivateIpAddress,LaunchTime,Tags[?Key==`Name`]| [0].Value]'\'' --output table'
#  
  alias aws-getips-production='aws ec2 describe-instances --region '\
    \''eu-central-1'\'' --profile '\''default'\'' --query '\
    \''Reservations[].Instances[].[InstanceId,InstanceType,InstanceState,'\
    'PublicIpAddress,PrivateIpAddress,LaunchTime,Tags[?Key==`Name`]| '\
    '[0].Value]'\'' --output table'
#  
  alias aws-get-endpoint-production-rds='aws rds --region eu-central-1 '\
    'describe-db-instances --query "DBInstances[*].Endpoint.Address"'
#  
  alias vim="CC=/opt/homebrew/opt/llvm/bin/clang lazy"
#  
  alias vi="CC=/opt/homebrew/opt/llvm/bin/clang nvim"
#  
  alias email="neomutt"
#  
  alias syncmail="mbsync -a"
#  
  alias qb="open -a /Applications/qutebrowser.app"
#  
  alias sentinel="redis-server /opt/homebrew/etc/redis-sentinel.conf --sentinel"
#  
  alias {ws,workspace,project}="~/scripts/workspace.sh"
#  
  alias {db,database}="~/scripts/db.sh"
#   
  alias {sshs,remote}="~/scripts/remote.sh"
#  
  alias encrypt="~/scripts/encrypt.sh"
#  
  alias lazy="NVIM_APPNAME=LazyVim nvim"
#  
  alias kick="NVIM_APPNAME=kickstart nvim"
#  
  alias chad="NVIM_APPNAME=NvChad nvim"
#  
  alias astro="NVIM_APPNAME=AstroNvim nvim"
#  
  alias linode="linode-cli linodes ls"
#--
  alias ls="lsd"
#--
  function nvims() {
    items=("default" "kickstart" "LazyVim" "NvChad" "AstroNvim")
    config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
    if [[ -z $config ]]; then
      echo "Nothing selected"
      return 0
    elif [[ $config == "default" ]]; then
      config=""
    fi

    NVIM_APPNAME=$config nvim $@
  }
#  
  bindkey -s ^a "nvims\n"
#  
  bindkey -s ^f "~/scripts/tmux-sessionizer\n"
#  
  bindkey -s ^k "~/scripts/fzf-dir-vim\n"
#
  bindkey -s ^x "~/scripts/home\n"
#
  [ -s "/Users/georgeviolaris/.bun/_bun" ] && source "/Users/georgeviolaris/.bun/_bun"
  export BUN_INSTALL="$HOME/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
#
  export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
  export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
  export AR=/opt/homebrew/opt/llvm/bin/llvm-ar
