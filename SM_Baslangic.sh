#!/bin/bash
sudo add-apt-repository ppa:mc3man/mpv-tests
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install valgrind openssh-server sublime-text mpv
sudo apt remove '^vlc.*'
sudo apt autoremove