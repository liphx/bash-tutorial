# ls
alias l='ls -F'
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al'

# cd ..
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# interactive
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

# terminal
alias c=clear
alias r=reset

# history
alias h=history
alias hgrep='history | grep'

# apt 
alias install='sudo apt install'
alias update='sudo apt update && sudo apt upgrade'

# find file
alias ff='find . -name $1'

# edit file
alias vimrc='vim ~/.vimrc'

# my software
alias qtcreator='/opt/qtcreator-4.12.4/bin/qtcreator'

alias j='jobs -l'
alias pu=pushd
alias po=popd
