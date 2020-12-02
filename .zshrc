#############################################
#  Cale's Motherfuckin' Zshell Config File  #
#############################################

# Path to your oh-my-zsh installation.
export ZSH="/Users/ch073217/.oh-my-zsh"

# Theme
ZSH_THEME="charms"

# Plugins
plugins=(git)

# Source
source $ZSH/oh-my-zsh.sh

# Aliases
alias c="clear"
alias l="ls -ac"
alias cd="pushd"
alias pd="popd"
alias d="dirs -v"
alias m="mkdir"

# Apps
alias v="nvim"
alias g="git"
alias k="kubectl"
alias mk="minikube"
alias top="gotop -pa"

# NPM
alias nr="npm run"
alias nt="npm test"
alias nl="npm run eslint"
alias ntal="npm test && npm run eslint"

# Maven
alias mt="mvn test"
alias md="mvn detekt:check -Ddetekt.config=detekt-asd.yml"
alias mtad="mvn test && mvn detekt:check -Ddetekt.config=detekt-asd.yml"

export PATH="/usr/local/Cellar/maven@3.5/3.5.4/bin/:$PATH"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Python
alias p=python
alias j=jupyter
alias jn="jupyter notebook"
alias jl="jupyter lab"
alias md="markdown_py"

PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
PATH="$PATH:$PYTHON_BIN_PATH"

# split_tunnel commands
alias split="split_tunnel"
alias close="sudo close_split_tunnel"
alias cleanup="sudo cleanup_split_tunnel"

# silver-lion commands
alias slapi="npm run start-api:dev"
alias sl="npm run start:dev"
alias slbwl="npm run start:https"
slbwlfn() {
    if [ "$1" != "" ] # or better, if [ -n "$1" ]
    then
        npm run start:https https://cssa:3000/?realm=$1
    else
        npm run start:https https://cssa:3000/?realm=associate
    fi
}
#export ELASTIC_APM_INSTRUMENT="false"

# . file paths
ZRC="$HOME/.zshrc"
VRC="$HOME/.config/nvim/init.vim"
