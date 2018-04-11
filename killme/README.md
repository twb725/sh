## debian安装easy-install

通过引导程序 ez_setup.py 来安装。这个引导程序会联网下载最新版本setuptools来安装，同时也可以更新本地的setuptools。

$ wget http://peak.telecommunity.com/dist/ez_setup.py

$ sudo python ez_setup.py

更新setuptools：

sudo python ez_setup.py -U setuptools

