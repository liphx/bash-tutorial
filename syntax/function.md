# function - 函数

## 函数定义

```shell
function fname() 
{     
    statements;
}
```

或

```shell
fname()
{
    statements;
}
```

## 调用函数

```shell
fname; # 使用函数名执行函数
fname arg1 arg2; # 传递参数
```

```shell
function func()
{
    echo $1;
    echo "$@";
    return 0;
}
func hello world;
```

输出

```
hello
hello world
```

其中

```
$0是脚本名称。
$1是第一个参数。
$2是第二个参数。
$n是第n个参数。
"$@"被扩展成"$1""$2""$3"等。
"$*"被扩展成"$1c$2c$3"，其中c是IFS的第一个字符。
"$@"要比"$*"用得多。由于"$*"将所有的参数当作单个字符串，因此它很少被使用。
```

## 递归

```shell
function func()
{
    echo hello;
    sleep 1;
    func;
}
func;
```

bash也支持递归函数，自身调用自己（或循环调用）

```shell
:(){ :|:& };: # fork 炸弹，":" 可作为函数名
```

## 导出函数

`export -f fname`

## 