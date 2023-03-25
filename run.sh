#!/bin/sh
steamcmd +force_install_dir /game/VRisingServer +login anonymous +app_update 1829350 validate +quit

cp -n /game/VRisingServer/VRisingServer_Data/StreamingAssets/Settings/Server* /data/Settings/

rm -r /tmp/.X0-lock
cd /game/VRisingServer
Xvfb :0 -screen 0 1024x768x16 & \
DISPLAY=:0.0 wine VRisingServer.exe -persistentDataPath Z:/data -logFile "Z:\data\VRisingServer.log"
