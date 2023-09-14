#!/bin/bash

tmux new-window -n:mcfrens 'cd ~/Minecraft/mc-frens/; ./start.sh'

tmux new-window -n:survival 'cd ~/Minecraft/minecraft-frens-1.18/; ./start.sh'

tmux new-window -n:moddedsurvival 'cd ~/Minecraft/better-mc/; ./start.sh'

tmux new-window -n:lobby 'cd ~/Minecraft/mc-frens-creative/; ./start.sh'

