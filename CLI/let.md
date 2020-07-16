# let 

```shell
#!/bin/bash 
a=1
b=2
let c=a+b
echo $c # 3
let c++
echo $c # 4
let c+=c
echo $c # 8
```