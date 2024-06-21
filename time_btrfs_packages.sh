#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

#sudo reflector -c Switzerland -a 6 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syy

sudo pacman -S snapper snap-pac git grub-btrfs

git clone https://aur.archlinux.org/yay-bin

cd yay-bin

makepkg -si

cd ..

rm -r yay-bin

yay -Syy

yay -S  snap-pac-grub snapper-rollback

#sudo systemctl enable --now auto-cpufreq

#sudo pacman -S sddm plasma ark dolphin konsole kate kcalc htop 

#gzip p7zip bzip2

#sudo systemctl enable sddm
#/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
#sleep 5
#reboot
