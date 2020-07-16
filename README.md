# Linux Shell 学习

## 修改Shell 提示符

提示符中 $ 表示普通用户，# 表示root

~/.bashrc中
PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$
\u可以扩展为用户名，\h可以扩展为主机名，而\w可以扩展为当前工作目录

## 中文版man 手册

## alias

## 有哪些内建命令 shell builtin

内建命令不需要使用子进程来执行，包括`cd, exit, type, alias, ., echo, history`

特殊文件/proc/PID/environ是一个包含环境变量以及对应变量值的列表。

## .bash_alias

```shell
alias c=clear
alias h=history
alias ..='cd ..'
alias install='sudo apt install'
alias update='sudo apt update && sudo apt upgrade'

alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
```

shell使用分号或换行符来分隔单个命令或命令序列

## 添加路径的函数

`prepend() { [ -d "$2" ] && eval $1=\"$2\$\{$1:+':'\$$1\}\" && export $1 ;`

`prepend PATH /opt/myapp/bin`

## 重定向

cmd > file  
cmd 2> file
cmd 1>file1 2> file2
cmd > file 2>&1 或 cmd &> file

重定向脚本内部的文本块

```shell
#!/bin/bash 
cat<<EOF>log.txt 
This is a generated file. Do not edit. Changes will be overwritten. EOF 
```

## :

shell的内建命令:，该命令的退出状态总是为0


