export ZSH="/Users/charms/.oh-my-zsh"
ZSH_THEME="charms2"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR='nvim'
export PATH="/usr/local/bin:$PATH"
export TERM=screen-256color
export PATH=/Users/charms/.opam/default/bin:/usr/local/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/Users/charms/.opam/default/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:~/Downloads/nand2tetris/tools
export PATH=/Users/charms/.opam/default/bin:/usr/local/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/Users/charms/.opam/default/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:~/Downloads/nand2tetris/tools

alias ds='dirs -v'
alias ls='ls -G'
alias la='ls -aG'
alias cd='pushd'
alias pd='popd'
# Copy the PWD to the Clipboard
alias cpwd="pwd | tr -d '\n' | pbcopy && echo 'pwd copied to clipboard'"
alias vi='vim'
alias zk='vim ~/Notes/zettelkasten/litnotes.txt'
alias cal='calcurse'
alias yt='mpsyt'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias td='todolist'
alias top='gotop'
alias music='musikcube'

# opam configuration
test -r /Users/charms/.opam/opam-init/init.zsh && . /Users/charms/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

it2prof() { echo -e "\033]50;SetProfile=$1\a" }
alias dark='it2prof Dark'
alias light='it2prof Light'
