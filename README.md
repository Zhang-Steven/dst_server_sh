# install & init

中文教程：https://zhuanlan.zhihu.com/p/625645476

```bash
./init.sh
```

# config your saved_cluster

copy cluster folder into "~/.klei/DoNotStarveTogether"

edit dedicated_server_mods_setup.lua in this folder

then run

```bash
./cluster_config.sh
```

# Boot 

copy your token in cluster_token.txt, then mv to your Cluster folder

run 

```bash
./boot.sh Cluster_1
```

Cluster_1 is you saved folder in "~/.klei/DoNotStarveTogether" dir

then enjoy the game

# update

run 

```bash
./update.sh
./cluster_config.sh
```

remember to run cluster_config.sh after update, or the mods will not be updated correctly.