# 变量

+ 变量名由一系列字母、数字和下划线组成，其中不包含空白字符，变量包含一个值与0或多个属性，属性由`declare`来声明。
+ 常用的惯例是在脚本中使用大写字母命名环境变量，使用驼峰命名法或小写字母命名其他变量。
+ 赋值操作：`name=[value]`，其中，空字符串是一个有效值
+ 如果value不包含任何空白字符（例如空格），那么就不需要将其放入引号中，否则必须使用单引号或双引号
+ `var = value`不同于`var=value`。两边没有空格的等号是赋值操作符，加上空格的等号表示的是等量关系测试。
+ 在变量名之前加上美元符号（$）就可以访问变量的内容
+ `echo $var` 也可以这样写：`echo ${var}`
+ 使用单引号时，变量不会被扩展，仍依照原样显示。这意味着`echo '$var'`会显示`$var`。
+ 但如果变量var已经定义过，那么`echo "$var"`会显示出该变量的值；如果没有定义过，则什么都不显示。
+ 可以用下面的方法获得变量值的长度：`length=${#var}`

## 位置参数

位置参数是由一个或多个数字表示的参数，位置参数是在调用shell时从参数中分配的，可以使用`set`重新分配。位置参数N可以引用为 `${N}`，或者当N为单个数字时引用为 `$N`。位置参数不能用赋值语句赋值。`set`和`shift`用于设置和取消设置。在执行函数时它们被临时替换。

## 特殊参数

+ `$*  `    扩展为从1开始的位置参数，当展开不在双引号内时，每个位置参数展开为一个单独的单词；当在双引号内进行扩展时，它将扩展为一个单词，每个参数的值由`IFS`特殊变量的第一个字符分隔，即`"$*"` 等价为`"$1c$2c..."`，其中c是`IFS`变量值的第一个字符。 如果未设置`IFS`，则参数之间用空格分隔。 如果`IFS`为null，则参数连接时不插入分隔符
+ `$@  `    扩展为从1开始的位置参数。`"$@"` 等价为`"$1" "$2" ...`
+ `$#  `    位置参数个数
+ `$?  `    最近执行的前台管道的退出状态
+ `$-  `    `set`或由shell本身设置的那些选项标志（如`-i`选项）
+ `$$  `    shell的进程ID。在子shell中，它扩展为调用shell的进程ID，而不是子shell的
+ `$!  `    最近放置到后台的作业的进程ID，无论是作为异步命令执行还是使用`bg`
+ `$0  `    shell或shell脚本的名称，这是在shell初始化时设置的。如果使用Bash执行文件，则将`$0` 设置为该文件的名称；如果Bash以`-c`选项启动，则将`$0`设置为要执行的字符串之后的第一个参数（如果存在）；否则，将其设置为用于调用Bash的文件名
+ `$_  `    在shell启动时，设置为shell或shell脚本的绝对路径名；随后，扩展到前台执行的前一个简单命令的最后一个参数