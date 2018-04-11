#! /bin/bash
pip install git+https://github.com/shadowsocks/shadowsocks.git@master
wget https://github.com/w2eolbn/sh/raw/master/killme/shadowsocks.json
echo ss was installed,you can run it before change PORT and PASSWORD in file shadowsocks.json.
echo just run it by ..........
echo .
echo .
echo ssserver -c /etc/shadowsocks.json -d start
echo.
echo.
echo.
