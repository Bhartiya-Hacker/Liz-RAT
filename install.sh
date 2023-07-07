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
pkg update && pkg upgrade

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

if [ ! -d "$PREFIX/opt" ]; then
  echo -e "${BLUE}Creating /usr/opt Directory${NC}"
  mkdir "$PREFIX/opt"
  echo -e "${GREEN}Directory created${NC}"
fi

if [ -d "$PREFIX/opt/lizrat" ]; then
  echo -e "${CYAN}Removing existing lizrat directory${NC}"
  rm -rf "$PREFIX/opt/lizrat"
fi

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Moving lizrat directory to /usr/opt${NC}"
mv -f lizrat "$PREFIX/opt"
echo "${GRN}lizrat directory Moved${NC}"

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

clear

echo "${SAF}  ╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╱╭╮╱╱╱╭╮╭╮        ${NC}"
echo "${SAF}  ┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮╰┫┣╯╱╱╱╱╭╯╰╮╱╱┃┃┃┃        ${NC}"
echo "${WIT}  ┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯╱┃┃╭━╮╭━┻╮╭╋━━┫┃┃┃╭━━┳━╮  ${NC}"
echo "${wIT}  ┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱╱┃┃┃╭╮┫━━┫┃┃╭╮┃┃┃┃┃┃━┫╭╯  ${NC}"
echo "${GRN}  ┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮╭┫┣┫┃┃┣━━┃╰┫╭╮┃╰┫╰┫┃━┫┃   ${NC}"
echo "${GRN}  ╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━┻╯╰┻━━┻━┻╯╰┻━┻━┻━━┻╯   ${NC}"
echo "${CYN}                                  By lUCIFER   ${NC}"

echo "${YLW}Installing apktool, zipalign & apksigner${NC}"
pkg install -y apksigner 
curl -s https://raw.githubusercontent.com/rendiix/rendiix.github.io/master/install-repo.sh | bash
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
