# mc-frens

The Velocity Minecraft proxy for the MC Frens server. Contains instructions for getting things up and running.

## Worlds
Currently, we have two worlds available. Those are Caves and Cliffs and The Wild. The 1.17 server is likely lost to time. Which is part of the reason this new format exists.

## Overview
Essentially all you have to do is clone this repo, and the repos for each world. Each world runs its own server, and this repo connects them together. Fair warning, if you don't know how to use git, it may be confusing. But that is not what this tutorial is for. Just Google it it ;)

## Steps
1. Clone this repo
2. Inside the `mc-frens` folder, create a file `forwarding-secret`. Put some password in here, and remember it for later. We don't have this in the repo becuase it is a secret, duh.
2. Clone your other servers, and follow these steps for each one.
    1. Navigate to the folder in the command line. `cd ~/Documents/minecraft-frens-1.18/` or whatever it is called.
    2. Run `java -Xmx5120M -Xms1024M -jar fabric.jar nogui` You can change this if you have more RAM to spare.
    3. `CTL+C` to end the server once it has finished loading.
    4. Open (or create if it does not exist) `config/FabricProxy-Lite.toml`
    5. Set `secret = "[The secret I told you to remember before]"`
3. Once all the secrets have been set (and they only need to be set the first time you download them), run the java command above on each server.
4. Navigate to the mc-frens folder.
5. Run `sudo chmod +x start.bat` (should only have to do this once)
6. Run `./start.bat` to start the proxy server.
7. If you want to add more worlds, then you should probably just follow the fabric docs. Just add them to the velocity.toml and make sure they run on different ports.

## Custom Domain
But what about the cool mcfrens.com domain name? Too bad, that is mine. If you want a cool domain, buy one yourself :) You can find a tutorial for that anyways. Otherwise, just Google `what's my IP` and then type that into the minecraft server chooser to connect to it.