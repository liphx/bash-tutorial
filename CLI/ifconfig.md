# ifconfig - 配置网络接口

```shell
# export PATH=$PATH:/sbin # ifconfig 在/sbin下
# ifconfig 
eno1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.4  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::6466:2e15:e620:f2d8  prefixlen 64  scopeid 0x20<link>
        ether 00:d8:61:fd:fd:99  txqueuelen 1000  (Ethernet)
        RX packets 305812  bytes 403229904 (384.5 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 192436  bytes 25330504 (24.1 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 16  memory 0xa3200000-a3220000  

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 18  bytes 958 (958.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 18  bytes 958 (958.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

#
```
