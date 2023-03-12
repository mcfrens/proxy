#!/bin/bash

cd ~/Minecraft/mc-frens/
./start.sh > output.log &

cd ../minecraft-frens-1.18/
./start.sh > output.log &

#cd ../minecraft-frens-1.19/
#./start.sh > output.log &

cd ../better-mc/
./start.sh > output.log &

cd ../mc-frens-creative/
./start.sh > output.log &
