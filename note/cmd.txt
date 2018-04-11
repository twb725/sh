# BONG!!!!!

### 杀死abc.exe进程
  taskkill /im abc.exe /f

### 列出所有进程
  tasklist

### 关闭防火墙
  cmd /c netsh firewall set opmode mode=diable

详细命令：netsh firewall 
参数： 
? // 显示命令列表 
add // 添加防火墙配置 
delete // 删除防火墙配置 
dump // 显示一个配置脚本 
help // 显示命令列表 
reset // 将防火墙配置重置为默认值。 
set // 设置防火墙配置 
show // 显示防火墙配置 
add allowedprogram // 添加防火墙允许的程序配置。 
add portopening // 添加防火墙端口配置 
delete allowedprogram // 删除防火墙允许的程序配置 
delete portopening // 删除防火墙端口配置 
set allowedprogram // 设置防火墙允许的程序配置 
set icmpsetting // 设置防火墙 ICMP 配置 
set logging // 设置防火墙记录配置 
set multicastbroadcastresponse // 设置防火墙多播/广播响应配置 
set notifications // 设置防火墙通知配置 
set opmode // 设置防火墙操作配置 
set portopening // 设置防火墙端口配置 
set service // 设置防火墙服务配置 
show allowedprogram // 显示防火墙允许的程序配置 
show config // 显示防火墙配置。 
show currentprofile // 显示当前防火墙配置文件 
show icmpsetting // 显示防火墙 ICMP 配置 
show logging // 显示防火墙记录配置 
show multicastbroadcastresponse // 显示防火墙多播/广播响应配置 
show notifications // 显示防火墙操作配置 
show opmode // 显示防火墙端口配置 
show portopening // 显示防火墙端口配置 
show service // 显示防火墙服务配置 
show state // 显示当前防火墙状态

例如： 
命令：netsh firewall show allowedprogram //查看防火墙放行的程序 
netsh firewall set portopening TCP 445 ENABLE //打开445端口 
netsh firewall set portopening TCP 3389 ENABLE // 
netsh firewall delete allowedprogram C:\A.exe //删除放行程序A.exe 
netsh firewall set allowedprogram C:\A.exe A ENABLE //添加程序C盘下的A.exe并放行 
netsh firewall add allowedprogram C:\A.exe A ENABLE //添加程序C盘下的A.exe并放行
netsh firewall set icmpsettting type=ALL mode=enable //开启ICMP协议 
netsh firewall set icmpsettting type=2 mode=enable  //允许出站数据包太大


### 创建/删除服务
sc create test binPath="C:\123\456\789\test.exe"
sc delete test

### 配置服务
sc config test start= AUTO      //自动启动 start=后面有空格，不能少。
sc config test start= DEMAND    //手动
sc config test start= DISABLED  //禁用

### 开启/关闭服务
net start test     //net用于打开没有被禁用的服务
net stop test
sc start test
sc stop test

### 查询服务 
sc query  //查询所有
sc query test
