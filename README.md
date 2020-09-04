# 🌎 Minecraft Spigot server Installation Script (MISS)

Just a little tool to rice a simple mc server in any linux machine. this code uses the official spigot build tools that you can find at https://www.spigotmc.org/wiki/buildtools, you need to have a compatible java jre installed
## Instructions
0) set permissions
```bash
sudo chmod +x build.sh start.sh
```
1) create a new folder wherever you want
```bash
mkdir server-folder
```
2) link build.sh and start.sh to the server folder
```bash
sudo ln -s /ABS/PATH/TO/miss/build.sh /ABS/PATH/TO/server-folder/
```

```bash
sudo ln -s /ABS/PATH/TO/miss/start.sh /ABS/PATH/TO/server-folder/
```
3) cd to server-folder and build the server's jar  
```
sudo ./build.sh (ver)
```
replace ver with the version you want to compile, ex. (ver) = 1.16.1 
you can see the avaliable versions at https://www.spigotmc.org/wiki/buildtools/#versions  

4) run server  
```bash
./start.sh
```
5) open eula.txt and change false to true 
6) configure server.properties and run the server again as (4) step



This script runs the server into a screen, you can resume the screen session running the following command

```bash
screen -r server
```


[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
