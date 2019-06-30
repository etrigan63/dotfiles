#!/bin/bash
######################################################
#                                                    #
# Setup script for arch-based distributions.         #
#                RUN ONCE                            #
######################################################

#Update pacman database
sudo pacman -Syy

#Begin installing stuff I need
sudo pacman -S firefox git curl htop glances rapid-photo-downloader darktable rawtherapee nextcloud-desktop-client
sudo yay -S wavebox-bin

#Remove stuff I don't need
sudo pacman -R vivialdi

#Add repos for specials
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg

echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

#Install specials
sudo pacman -Sy sublime-text sublime-merge