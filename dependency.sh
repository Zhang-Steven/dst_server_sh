#!/bin/bash


sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libstdc++6 libgcc1 libcurl4-gnutls-dev:i386 lib32z1
