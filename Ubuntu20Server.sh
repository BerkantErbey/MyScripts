#!/bin/bash
sudo apt update
sudo apt install apt-transport-https -y
sudo apt install curl ffmpeg git htop ncdu neofetch net-tools nmap openssh-server net-tools tldr tree vim whois wireguard -y
sudo apt upgrade -y && sudo apt autoremove -y
