#!/bin/bash
echo "Installing (extra)"
sudo pacman -Sy --noconfirm scrot alsa-firmware alsa-utils firefox sl unzip zip slock #zathura-pdf-mupdf
sudo pacman -Sy --noconfirm pulseaudio cmus
sudo pacman -Sy --noconfirm the_silver_searcher fzf xclip bat #ag and more
echo "Done"
