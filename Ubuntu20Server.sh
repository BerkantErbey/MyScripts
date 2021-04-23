#!/bin/bash
sudo apt update
sudo apt install apt-transport-https -y
sudo apt install curl ffmpeg git youtube-dl htop ncdu neofetch net-tools xclip nmap openssh-server net-tools tldr tree vim whois wireguard wireguard-dkms wireguard-tools -y
sudo apt upgrade -y && sudo apt autoremove -y
