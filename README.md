# mc-frens

The Velocity Minecraft proxy for the MC Frens server. Contains instructions for getting things up and running.

## Worlds
This is the server that links all of your worlds together. The active server has the lobby and survival. Backups of these worlds can be found on my Google Drive.

## Overview
Essentially all you have to do is clone this repo, and gather all the servers you want to run. Each world runs its own server, and this repo connects them together. Fair warning, if you don't know how to use git, it may be confusing. But that is not what this tutorial is for. Just Duck it ;) Also I'm running these on Ubuntu.

## Steps
1. Clone this repo
2. Inside the `mc-frens` folder, create a file `forwarding.secret`. Put some password in here, and remember it for later. We don't have this in the repo becuase it is a secret, duh.
2. Clone the other servers, and follow these steps for each one.
    1. Navigate to the folder in the command line. `cd ~/Documents/minecraft-frens-1.18/` or whatever it is called.
    2. Run `chmod +x start.sh` and then `./start.sh` You can edit the RAM amounts in start.sh. 
    3. `CTL+C` to end the server once it has finished loading.
    4. Open `config/paper-global.yml`
    5. Under proxies set the following:
      ```
      velocity:
    	enabled: true
    	online-mode: true
    	secret: [your password from earlier]
      ```
3. Once all the secrets have been set (and they only need to be set the first time you download them), run the java command above on each server.
4. Navigate to the mc-frens folder.
5. Run `sudo chmod +x start.sh` (should only have to do this once)
6. Run `./start.sh` to start the proxy server.
7. If you want to add more worlds, then you should probably just follow the paper docs. Just add them to the velocity.toml and make sure they run on different ports.

## Custom Domain
But what about the cool mcfrens.com domain name? Too bad, that is mine. If you want a cool domain, buy one yourself :) You can find a tutorial for that anyways. Otherwise, just Google `what's my IP` and then type that into the minecraft server chooser to connect to it. (Don't forget to port forward on your router)

## Launch on start

1. Make sure your folder structure is Minecraft in the home directory containing mc-frens and minecraft-frens-1.18 and whaterver other servers.
2. run `crontab -e`
3. Add a new line at the end of the file `@reboot ./Minecraft/mc-frens/launch-all-servers.sh`
4. The launch all servers script will need to be edited with the file paths of your servers where each has their own start.sh script to start them.
4. This will start the server in the background which can make it hard to stop. You can run `top` and find all processes that are using Java. `kill -9 [PID]` to stop it. This should probably be improved using something like tmux.
