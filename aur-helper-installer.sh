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
	
    curl -o yay.tar.gz https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
    tar zxvf yay.tar.gz
    rm yay.tar.gz
    cd yay
    makepkg -csi --noconfirm
}

main;