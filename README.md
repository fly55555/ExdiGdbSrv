# ExdiGdbSrv
## 项目目的
##### 官方更新太慢, 提前修复一些方便自己调试用的问题
##### 代码写的太野了, 有很多并不安全的操作, 干脆不提pr了
## 当前已经实现的功能
##### 修复了Vmware->GDB->Exdi的特殊寄存器读取(cr0-cr8, gdt, idt), msr和drx暂时修不了, 写入以后需要了再加
##### 修复了Vmware->GDB->Exdi内存访问断点功能
##### 修复了Vmware->GDB->Exdi的物理内存读写功能
##### 修复了[原始项目](https://github.com/microsoft/WinDbg-Samples/tree/master/Exdi/exdigdbsrv)读取和设置寄存器的好多BUG, 大该是写的人并没有测试过功能到底是否正常运行
##### 实现了搜索Ntoskrnl基址用以应答DBGENG_EXDI_IOCTL_V3_GET_NT_BASE_ADDRESS_VALUE请求,此功能要求必须先修复idt寄存器读取功能
## 如何使用?
##### 你只需要编译这个项目, 替换掉原本的ExdiGdbSrv.dll并重新注册
##### 然后在windbg的内核调试链接命令里, 像我这样设置
##### windbg.exe -v -kx exdi:CLSID={29f9906e-9dbe-4d4b-b0fb-6acf7fb6d014},Kd=NTBaseAddr,DataBreaks=Exdi
##### 记住, Kd=NTBaseAddr 是必须的, 不然windbg将使用它那极其愚蠢的搜索方式找了半天也找不到Ntoskrnl基址
## 下一步预计修复的功能?
##### 我自己用着不舒服了再修

