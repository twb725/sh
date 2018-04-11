#!/bin/bash
#backup sources.list
cp /etc/apt/sources.list /etc/apt/sources.list.back
#add kali sources
echo deb http://http.kali.org/kali kali-rolling main non-free contrib > /etc/apt/sources.list
echo deb-src http://http.kali.org/kali kali-rolling main non-free contrib >> /etc/apt/sources.list
echo # deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib  >> /etc/apt/sources.list
echo # deb-src http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib  >> /etc/apt/sources.list
#add apt-key 
apt-key adv --keyserver keyserver.ubuntu.com --recv ED444FF07D8D0BF6
#reflash local update packages & and upgrade it
apt-get update 
apt-get upgrade
# install pip tool
apt-get install python-pip tree screen
echo !!  it's all done   !!
echo !!  it's all done   !!
