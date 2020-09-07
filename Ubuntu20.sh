#!/bin/bash
dpkg -l | grep -qw gdebi || sudo apt install gdebi
sudo add-apt-repository ppa:mc3man/mpv-tests
sudo add-apt-repository ppa:obsproject/obs-studio
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt update
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install anydesk curl chromium-browser ffmpeg gedit-plugin-text-size git gnome-tweak-tool obs-studio youtube-dl htop mpv ncdu neofetch net-tools nmap openssh-server putty smartmontools speedtest-cli sublime-text tldr tree vim whois wireguard
sudo apt remove '^vlc.*' 
sudo apt remove ryhthmbox
