# env,printenv

`env [选项]... [-] [名称=值]... [命令 [参数列表]...]` 在环境中将每个指定名称的环境变量设为指定的值，并运行给定命令

参数

```
-i, --ignore-environment
       不带环境变量启动

-0, --null
       使每行输出以 NUL 字符结束，不添加换行符

-u, --unset=名称
       从环境中移除指定环境变量

-C, --chdir=指定目录名称
       将工作目录修改为指定的目录名称

--help 显示此帮助信息并退出

--version
       显示版本信息并退出

单独的“-”隐含选项 -i。如果没有给定命令，则输出重建后的环境。
```


`printenv [选项]... [变量]...`  显示指定环境变量的值。如果没有指定变量，则显示所有配对的变量名称与值

参数

```
-0, --null
       使每行输出以 NUL 字符结束，不添加换行符

--help 显示此帮助信息并退出

--version
       显示版本信息并退出

注意：您的 shell 可能内置了自己的 printenv 程序版本，它通常会覆盖这里所提及的相应版本。请查阅您的 shell 文档获知
它所支持的选项。
```

```shell
$ env -i printenv # 无输出
$ env HOME=/home/tmp printenv HOME
/home/tmp
```

要查看其他进程的环境变量，可以使用如下命令：cat /proc/$PID/environ