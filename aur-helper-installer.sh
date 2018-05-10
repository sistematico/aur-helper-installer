#!/usr/bin/env bash

#[INFO]###########################################
# Autor      = José Augusto a.k.a jok3r          #
# Date       = 07/05/2018                        #
# LastUpdate = 07/05/2018                        #
#------------------------------------------------#
# Script to install yay aur helper on Arch Linux #
# Creadits to AUI from helmuthdu github          #
##################################################

##[TODO]##########################################
# Add more aur helpers                           #
##################################################

function main() {
    clear
    read -p "
    --- Select an aur helper ---

    [1] - yay
    [2] - yaourt
    [3] - trizen

->" input;

    if [[ $input -eq 1 ]]; then
        yay_install;
    elif [[ $input -eq 2 ]]; then
        yaourt_install;
    elif [[ $input -eq 3 ]]; then
        trizen_install;
    else
        echo "Wrong input, try again!"
        main;
    fi
}

function yay_install() {
    clear;
    echo "Installing yay..."
    echo -e "Yet another yogurt. Pacman wrapper and AUR helper written in go.\n\n\n"

    install "yay";

}

function yaourt_install() {
    clear;
    echo "Installing Yaourt...";
    echo -e "A pacman wrapper with extended features and AUR support\n\n\n";

    install "yaourt";
}

function trizen_install() {
    clear;
    echo "Installing Trizen..."
    echo -e "Lightweight AUR Package Manager\n\n\n"

    install "trizen"
}

function install() {

    for PKG in $1; do
        curl -o ${PKG}.tar.gz https://aur.archlinux.org/cgit/aur.git/snapshot/${PKG}.tar.gz
        tar zxvf ${PKG}.tar.gz
         rm ${PKG}.tar.gz
         cd ${PKG}
         makepkg -csi --noconfirm
     done
}

main;
