#!/usr/bin/env sh

while [ true ]; do
    echo -e "\n\n[start.sh] Starting Minecraft server..."
    java -Xms1G -Xmx12G -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+ParallelRefProcEnabled -XX:+PerfDisableSharedMem -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1HeapRegionSize=8M -XX:G1HeapWastePercent=5 -XX:G1MaxNewSizePercent=40 -XX:G1MixedGCCountTarget=4 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1NewSizePercent=30 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15 -XX:MaxGCPauseMillis=200 -XX:MaxTenuringThreshold=1 -XX:SurvivorRatio=32 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -Duser.timezone=Asia/Singapore -jar purpur-1.21.10-2535.jar nogui
    echo -e "\n\n[start.sh] Server restarting..."
    echo -e "[start.sh] Press CTRL + C to stop.\n\n"
    sleep 3
done
