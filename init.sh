#!/bin/bash

sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libstdc++6 libgcc1 libcurl4-gnutls-dev:i386 lib32z1

mkdir ~/steamcmd
cd ~/steamcmd

wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz

tar -xvzf steamcmd_linux.tar.gz

./steamcmd.sh +force_install_dir ~/dontstarvetogether_dedicated_server +login anonymous +app_update 343050 validate +quit
