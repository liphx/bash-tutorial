# gcc

`gcc [options] file...`

## 选项

`-o <file>` 指定输出文件名  
`-E` 只进行预处理

## 命令

`main.c`

```c
#include <stdio.h>
#include <stdlib.h>
#include "sum.h"

int main()
{
    printf("2 + 3 = %d\n", sum(2, 3));
    return 0;
}

void no_main()
{
    printf("not main function\n");
    exit(0);
}
```

`sum.c`

```c
int sum(int a, int b)
{
    return a + b;
}
```

`sum.h`

```c
int sum(int a, int b);
```

```shell
$ gcc main.c sum.c # =>a.out
$ ./a.out
2 + 3 = 5
$ gcc main.c sum.c -o main # =>main
$ gcc sum.c -E # 只进行预处理并结果输出到终端
$ gcc sum.c -S # =>sum.s 只编译不汇编，不链接
$ gcc sum.c -c # =>sum.o 编译、汇编，不链接
$ mv sum.h ..
$ gcc main.c sum.c -I .. # 指定头文件位置
$ gcc main.c sum.c -e no_main # 指定程序入口
$ ./a.out
not main function
```
