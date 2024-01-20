#!/bin/bash

steamcmd_dir="$HOME/steamcmd"
install_dir="$HOME/dontstarvetogether_dedicated_server"
default_cluster_name="Cluster_2"
dontstarve_dir="$HOME/.klei/DoNotStarveTogether"

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

cd "$steamcmd_dir" || fail "Missing $steamcmd_dir directory!"
check_for_file "steamcmd.sh"
check_for_file "$dontstarve_dir/$cluster_name/cluster.ini"
check_for_file "$dontstarve_dir/$cluster_name/cluster_token.txt"
check_for_file "$dontstarve_dir/$cluster_name/Master/server.ini"
check_for_file "$dontstarve_dir/$cluster_name/Caves/server.ini"
check_for_file "$install_dir/bin"
cd "$install_dir/bin64" || fail
run_shared=(./dontstarve_dedicated_server_nullrenderer_x64)
run_shared+=(-console)
run_shared+=(-cluster "$cluster_name")
run_shared+=(-monitor_parent_process $$)
run_shared+=(-shard)
"${run_shared[@]}" Caves | sed 's/^/Caves: /' > "~/server_log.txt" &
"${run_shared[@]}" Master | sed 's/^/Master: /' >> "~/server_log.txt"

echo "Servers started in the background, check ~/server_log.txt!"
