#!/bin/bash
#backup sources.list
cp /etc/apt/sources.list /etc/apt/sources.list.back
#add kali sources
echo deb http://http.kali.org/kali kali-rolling main non-free contrib > /etc/apt/sources.list
echo deb-src http://http.kali.org/kali kali-rolling main non-free contrib >> /etc/apt/sources.list
echo # deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib  >> /etc/apt/sources.list
echo # deb-src http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib  >> /etc/apt/sources.list
#add apt-key 
apt-get install dirmngr
apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6
#reflash local update packages & and upgrade it
apt-get update 
apt-get upgrade
# install pip tool
apt-get install python-pip tree screen git-core
echo ======it is all done======
echo ======it is all done======
echo ======it is all done======
echo ======it is all done======
echo ======it is all done======
