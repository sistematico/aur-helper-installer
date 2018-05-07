#!/bin/bash

#[INFO]###########################################
# Autor      = José Augusto a.k.a jok3r          #
# Date       = 07/05/2018                        #
# LastUpdate = 07/05/2018                        #
#------------------------------------------------#
# Script to install yay aur helper on Arch Linux #
# Creadits to AUI from helmuthdu github          #
##################################################

function main() {
    clear
    read -p "
    --- Select an aur helper ---

    [1] - yay
    [2] - yaourt
    [3] - trizen
    " input;

    if [[ $input -eq 1 ]]; then
        clear;
        yay_install;
    elif [[ $input -eq 2 ]]; then
        clear;
        yaourt_install;
    elif [[ $input -eq 3 ]]; then
        clear;
        trizen_install;
    else
        echo "Wrong input, try again!"
        main;
    fi
}

function yay_install() {
    echo "Installing yay..."
    echo "Yet another yogurt. Pacman wrapper and AUR helper written in go."

    curl -o yay.tar.gz https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
    tar zxvf yay.tar.gz
    rm yay.tar.gz
    cd yay
    makepkg -csi --noconfirm && echo 'DONE!'
}

main;