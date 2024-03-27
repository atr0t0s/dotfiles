#=# ====================================================================================== #=#
#+# --------------------------------------- Setup ---------------------------------------- #+#
#                                                                                            #
    export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completio
    eval "$(rbenv init - zsh)"                                                               #
	export PYENV_ROOT="$HOME/.pyenv"
	command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
    eval "$(pyenv init --path)"                                                              #
#                                                                                            #
    if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then   #
      source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"            #
    fi                                                                                       #
#                                                                                            #
    plugins=(web $plugins)                                                                   #
#                                                                                            #
    export PATH=$PATH:$HOME/Library/Python/3.8/bin                                           #
    export PATH=$PATH:/opt/homebrew/bin/ngrok                                              #
    export PATH=$PATH:$HOME/.rbenv/shims                                                     #
    export ZSH="$HOME/.oh-my-zsh"                                                            #
	export PATH=$PATH:/Applications/Julia-1.8.app/Contents/Resources/julia/bin
    export ANSIBLE_CONFIG=ansible.super.cfg                                                  #
	export DENO_INSTALL="/Users/georgeviolaris/.deno"
	export PATH="$DENO_INSTALL/bin:$PATH"
	#export TERM=xterm-256color

#                                                                                            #
    ZSH_THEME="powerlevel10k/powerlevel10k"                                                  #
#                                                                                            #
    setopt AUTO_CD AUTO_PUSHD PUSHD_IGNORE_DUPS PUSHD_SILENT PUSHD_TO_HOME                   #
#                                                                                            #
    plugins=(git zsh-syntax-highlighting zsh-autosuggestions)                                #
#                                                                                            #
    source $ZSH/oh-my-zsh.sh                                                                 #
#                                                                                            #
    [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh                                             #
#                                                                                            #
    export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"          #
    export PATH=$PATH:/opt/homebrew/opt/mongodb-community@4.4/bin                            #
#                                                                                            #
    eval $(thefuck --alias)                                                                  #
    eval "$(rbenv init - zsh)"                                                               #
    export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"           #
#                                                                                            #
    bindkey -v                                                                               #
#                                                                                            #
#+# --------------------------------------- puteS ---------------------------------------- #+#
#=# ====================================================================================== #=#
#                                                                                            #
#               ,---,---,---,---,---,---,---,---,---,---,---,---,---,-------,                #
#               |1/2| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 | + | ' | <-    |                #
#               |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|                #
#               | ->| | Q | W | E | R | T | Y | U | I | O | P | ] | ^ |     |                #
#               |-----',--',--',--',--',--',--',--',--',--',--',--',--'|    |                #
#               | Caps | A | S | D | F | G | H | J | K | L | \ | [ | * |    |                #
#               |----,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'---'----|                #
#               |    | < | Z | X | C | V | B | N | M | , | . | - |          |                #
#               |----'-,-',--'--,'---'---'---'---'---'---'-,-'---',--,------|                #          
#               | ctrl |  | alt |                          |altgr |  | ctrl |                #
#               '------'  '-----'--------------------------'------'  '------'                #
#                                                                                            #
#=# ====================================================================================== #=#
#+# -------------------------------------- Aliases --------------------------------------- #+#
#                                                                                            #
    alias aws-getips-staging='aws ec2 describe-instances --region '\
      \''eu-west-1'\'' --profile '\''default'\'' --query '\
      \''Reservations[].Instances[].[InstanceId,InstanceType,PublicIpAddress,'\
      'PrivateIpAddress,LaunchTime,Tags[?Key==`Name`]| [0].Value]'\'' --output table'
#                                                                                            #
    alias aws-getips-production='aws ec2 describe-instances --region '\
      \''eu-central-1'\'' --profile '\''default'\'' --query '\
      \''Reservations[].Instances[].[InstanceId,InstanceType,InstanceState,'\
      'PublicIpAddress,PrivateIpAddress,LaunchTime,Tags[?Key==`Name`]| '\
      '[0].Value]'\'' --output table'                                              
#                                                                                            #
    alias aws-get-endpoint-production-rds='aws rds --region eu-central-1 '\
      'describe-db-instances --query "DBInstances[*].Endpoint.Address"'            
#                                                                                            #
    alias vim="CC=/opt/homebrew/opt/llvm/bin/clang nvim"                                     # 
#                                                                                            #
    alias v="CC=/opt/homebrew/opt/llvm/bin/clang nvim"                                       #
#                                                                                            #
    alias vi="CC=/opt/homebrew/opt/llvm/bin/clang nvim"                                      #
#                                                                                            #
    alias email="neomutt"                                                                    #
#                                                                                            #
    alias syncmail="mbsync -a"                                                               #
#                                                                                            #
    alias qb="open -a /Applications/qutebrowser.app"                                         #
	alias sentinel="redis-server /opt/homebrew/etc/redis-sentinel.conf --sentinel"           #
#                                                                                            #
#+# --------------------------------------- sesailA -------------------------------------- #+#
#=# ====================================================================================== #=#
#                                                                                            #
#                                         __    _                                            #
#                                    _wr""        "-q__                                      #
#                                 _dP                 9m_                                    #
#                               _#P                     9#_                                  #
#                              d#@                       9#m                                 #
#                             d##                         ###                                #
#                            J###                         ###L                               #
#                            {###K                       J###K                               #
#                            ]####K      ___aaa___      J####F                               #
#                        __gmM######_  w#P""   ""9#m  _d#####Mmw__                           #
#                     _g##############mZ_         __g##############m_                        #
#                   _d####M@PPPP@@M#######Mmp gm#########@@PPP9@M####m_                      #
#                  a###""          ,Z"#####@" '######"\g          ""M##m                     #
#                 J#@"             0L  "*##     ##@"  J#              *#K                    #
#                 #"               `#    "_gmwgm_~    dF               `#_                   #
#                7F                 "#_   ]#####F   _dK                 JE                   #
#                ]                    *m__ ##### __g@"                   F                   #
#                                       "PJ#####LP"                                          #
#                 `                       0######_                      '                    #
#                                       _0########_                                          #
#                     .               _d#####^#####m__              ,                        #
#                      "*w_________am#####P"   ~9#####mw_________w*"                         #
#                          ""9@#####@M""           ""P@#####@M""                             #
#                                                                                            #
#                                                                                            #
#                                                                                            #
#=# ====================================================================================== #=#
#+# --------------------------------------- Scripts -------------------------------------- #+# 
#                                                                                            #
    alias {ws,workspace,project}="~/scripts/workspace.sh"                                    #
#                                                                                            #
    alias {db,database}="~/scripts/db.sh"                                                    #
#                                                                                            # 
    alias {sshs,remote}="~/scripts/remote.sh"                                                #

	alias encrypt="~/scripts/encrypt.sh"
#                                                                                            #
#+# --------------------------------------- stpircS -------------------------------------- #+#
#=# ====================================================================================== #=#
#                                                                                            #
#                                                                                            #
#                                       _..gggggppppp.._                                     #
#                                 _.gd$$$$$$$$$$$$$$$$$$bp._                                 #
#                               .g$$$$$$P^^""j$$b""""^^T$$$$$$p.                             #
#                            .g$$$P^T$$b    d$P T;       ""^^T$$$p.                          #
#                          .d$$P^"  :$; `  :$;                "^T$$b.                        #
#                        .d$$P'      T$b.   T$b                  `T$$b.                      #
#                       d$$P'      .gg$$$$bpd$$$p.d$bpp.           `T$$b                     #
#                      d$$P      .d$$$$$$$$$$$$$$$$$$$$bp.           T$$b                    #
#                     d$$P      d$$$$$$$$$$$$$$$$$$$$$$$$$b.          T$$b                   #
#                    d$$P      d$$$$$$$$$$$$$$$$$$P^^T$$$$P            T$$b                  #
#                   d$$P    '-'T$$$$$$$$$$$$$$$$$$bggpd$$$$b.           T$$b                 #
#                  :$$$      .d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$p._.g.     $$$;                #
#                  $$$;     d$$$$$$$$$$$$$$$$$$$$$$$P^"^T$$$$P^^T$$$;    :$$$                #
#                 :$$$     :$$$$$$$$$$$$$$:$$$$$$$$$_    "^T$bpd$$$$,     $$$;               #
#                 $$$;     :$$$$$$$$$$$$$$bT$$$$$P^^T$p.    `T$$$$$$;     :$$$               #
#                :$$$      :$$$$$$$$$$$$$$P `^^^'    "^T$p.    lb`TP       $$$;              #
#                :$$$      $$$$$$$$$$$$$$$              `T$$p._;$b         $$$;              #
#                $$$;      $$$$$$$$$$$$$$;                `T$$$$:Tb        :$$$              #
#                $$$;      $$$$$$$$$$$$$$$                        Tb    _  :$$$              #
#                :$$$     d$$$$$$$$$$$$$$$.                        $b.__Tb $$$;              #
#                :$$$  .g$$$$$$$$$$$$$$$$$$$p...______...gp._      :$`^^^' $$$;              #
#                 $$$;  `^^'T$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$p.    Tb._, :$$$               #
#                 :$$$       T$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$b.   "^"  $$$;               #
#                  $$$;       `$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$b      :$$$                #
#                  :$$$        $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;     $$$;                #
#                   T$$b    _  :$$`$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$;   d$$P                 #
#                    T$$b   T$g$$; :$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$  d$$P                  #
#                     T$$b   `^^'  :$$ "^T$$$$$$$$$$$$$$$$$$$$$$$$$$$ d$$P                   #
#                      T$$b        $P     T$$$$$$$$$$$$$$$$$$$$$$$$$;d$$P                    #
#                       T$$b.      '       $$$$$$$$$$$$$$$$$$$$$$$$$$$$P                     #
#                        `T$$$p.   bug    d$$$$$$$$$$$$$$$$$$$$$$$$$$P'                      #
#                          `T$$$$p..__..g$$$$$$$$$$$$$$$$$$$$$$$$$$P'                        #
#                            "^$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$^"                          #
#                               "^T$$$$$$$$$$$$$$$$$$$$$$$$$$P^"                             #
#                                   """^^^T$$$$$$$$$$P^^^"""                                 #
#                                                                                            #
#                                                                                            #
#=# ====================================================================================== #=#
#-# -------------------------------------- Functions ------------------------------------- #-# 
#                                                                                            #
    lapps() { lsd "/Applications/"; }                                                        #
#                                                                                            #
    app() { open -a "/Applications/$1.app"; }                                                #
#                                                                                            #
    notes() { cd ~/cloud/Dropbox/notes && nvim; }                                            #
#                                                                                            #
    mux() { tmux attach-session -t tmux -c ~/; }                                             #

	nmux() { tmux new -s tmux -c ~/; }
#                                                                                            #
#+# -------------------------------------- snoitcnuF ------------------------------------- #+#
#=# ====================================================================================== #=#

# bun completions
[ -s "/Users/georgeviolaris/.bun/_bun" ] && source "/Users/georgeviolaris/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
