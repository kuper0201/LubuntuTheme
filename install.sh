#!/bin/bash

wget https://raw.githubusercontents.com/kuper0201/LubuntuTheme/main/Dracula-GTK.tar.gz
wget https://raw.githubusercontents.com/kuper0201/LubuntuTheme/main/Dracula-lxqt.tar.gz

tar -zxvf Dracula-GTK.tar.gz
tar -zxvf Dracula-lxqt.tar.gz

obconf-qt Dracula-openbox.obt
cp -R Dracula-GTK /usr/share/themes/Dracula-GTK
cp -R Dracula-lxqt /usr/share/lxqt/themes/Dracula-lxqt
cp lxqt.conf $(pwd)/.config/lxqt/lxqt.conf

# Cleanup
rm -rf Dracula-GTK
rm -rf Dracula-lxqt
