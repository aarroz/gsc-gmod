#!/bin/bash
./srcds_run -game garrysmod +maxplayers 16 +map gm_construct +host_workshop_collection 776121544 -condebug &
sleep 15
tail -f /opt/gmod/garrysmod/console.log
