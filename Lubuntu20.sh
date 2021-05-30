#!/bin/bash
apt update
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt update
apt install apt-transport-https
apt update && apt install anydesk curl git htop mpv ncdu neofetch net-tools nmap openssh-server net-tools sublime-text tldr netcat telnet tree vim whois wireguard
apt remove '^vlc.*' 
apt remove ryhthmbox
apt update && apt upgrade -y && apt autoremove -y
apt remove transmission* trojita* quassel* k3b* fonts-smc* fonts-tlwg* fonts-samyak*
2
300
102.7
8.8
2.5


sda1 boot fat32 300 MİB
sda2 ext4 / 102.7
sda3 linuxsawp 8.8