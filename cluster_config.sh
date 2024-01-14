#!/bin/bash

default_cluster_name="Cluster_2"
dontstarve_dir="$HOME/.klei/DoNotStarveTogether"
install_dir="$HOME/dontstarvetogether_dedicated_server"
scripts_dir="$(dirname "$(readlink -f "$0")")"

function fail() {
    echo Error: "$@" >&2
    exit 1
}

function check_for_file() { 
    if [ ! -e "$1" ]; then
        fail "Missing file: $1"
    fi
}

if [ "$#" -eq 0 ];then
    cluster_name="$default_cluster_name"
elif ["$#" -eq 1 ];then
    cluster_name="$1"
else 
    fail "Usage: $0 [cluster_name]"
fi

cluster_dir="$dontstarve_dir/$cluster_name"

# check data contegrity
check_for_file "$cluster_dir/cluster.ini"
check_for_file "$cluster_dir/Master/server.ini"
check_for_file "$cluster_dir/Caves/server.ini"
check_for_file "$cluster_dir/Master/modoverrides.lua"
check_for_file "$install_dir/mods/dedicated_server_mods_setup.lua"

cp $scripts_dir/dedicated_server_mods_setup.lua $install_dir/mods/dedicated_server_mods_setup.lua
touch "$dontstarve_dir/$cluster_name/cluster_token.txt"
