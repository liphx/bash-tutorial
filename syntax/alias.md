# alias

创建别名 `alias ll='ls -l'`

alias命令的效果只是暂时的。一旦关闭当前终端，所有设置过的别名就失效了。
为了使别名在所有的shell中都可用，可以将其定义放入~/.bashrc文件中。每当一个新的交互式shell进程生成时，都会执行 ~/.bashrc中的命令。

如果需要删除别名，只需将其对应的定义（如果有的话）从~/.bashrc中删除，或者使用unalias命令。
也可以使用alias example=，这会取消别名example。

创建别名时，如果已经有同名的别名存在，那么原有的别名设置将被新的设置取代。

`$ \command` 字符\可以转义命令，从而执行原本的命令。在不可信环境下执行特权命令时，在命令前加上\来忽略可能存在的别名总是一种良好的安全实践。这是因为攻击者可能已经将一些别有用心的命令利用别名伪装成了特权命令，借此来盗取用户输入的重要信息。

alias命令可以列出当前定义的所有别名

```shell
$ alias 
alias ..='cd ..'
alias c='clear'
alias cp='cp -i'
alias h='history'
alias install='sudo apt install'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -al'
alias ls='ls --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias update='sudo apt update && sudo apt upgrade'
```

