#!/bin/bash



mkdir ~/steamcmd
cd ~/steamcmd

wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz

tar -xvzf steamcmd_linux.tar.gz

./steamcmd.sh +force_install_dir ~/dontstarvetogether_dedicated_server +login anonymous +app_update 343050 validate +quit

mkdir -p ~/.klei/DoNotStarveTogether/
