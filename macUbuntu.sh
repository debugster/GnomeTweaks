#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

clear
echo -e "			${BROWN}#####################################${NC}"
echo -e "			${BROWN}#      macOS Theme for Ubuntu       #${NC}"
echo -e "			${BROWN}#-----------------------------------#${NC}"
echo -e "			${BROWN}#  Author   : Nayeem Mahmood        #${NC}"
echo -e "			${BROWN}#  Email    : alive.dew@gmail.com   #${NC}"
echo -e "			${BROWN}#  Facebook : fb.com/alive.nayeem   #${NC}"
echo -e "			${BROWN}#  GitHub   : github.com/debugster  #${NC}"
echo -e "			${BROWN}#####################################${NC}"

#Install required packages
echo -e "${CYAN}Starting  : ${NC}${YELLOW}Attempting to install Required Packages : Curl, Gnome Tweak Tool, GTK Clutter${NC}"
xterm -e 'sh -c "echo Curl, Gnome Tweak Tool and GTK Clutter will be installed. Please enter your password.; sudo apt update; sudo apt install curl gnome-tweak-tool gir1.2-gtkclutter-1.0"'
echo -e "${GREEN}Finished  : ${NC}${YELLOW}Installing Packages : Curl, Gnome Tweak Tool, GTK Clutter${NC}"

echo -e "${CYAN}Starting  : ${NC}${YELLOW}Downloading required files${NC}"
cd ~/Downloads/
curl -L -O https://www.dropbox.com/s/rga88t2i4n9mbxz/CustomizedPack.tar.xz
echo -e "${GREEN}Finished  : ${NC}${YELLOW}Downloading required files${NC}"
[ ! -d CustomizedPack ] && mkdir -p CustomizedPack
tar xvf CustomizedPack.tar.xz -C CustomizedPack
clear
cd CustomizedPack
[ ! -d ~/.themes ] && mkdir -p ~/.themes
[ ! -d ~/Downloads/Apple-Darwin-For-Plymouth/darwin ] && mkdir -p ~/Downloads/Apple-Darwin-For-Plymouth/darwin
[ ! -d ~/.icons ] && mkdir -p ~/.icons
[ ! -d ~/.local/share/fonts ] && mkdir -p ~/.local/share/fonts
[ ! -d ~/.local/share/gnome-shell/extensions ] && mkdir -p ~/.local/share/gnome-shell/extensions

#ls

echo -e "${GREEN}Copying Cursor Files${NC}"
cp -r Cursor/* ~/.icons/
echo -e "${GREEN}Copying Icon Files${NC}"
cp -r Icons/* ~/.icons/
echo -e "${GREEN}Copying Shell Files${NC}"
cp -r Shell/* ~/.themes/
echo -e "${GREEN}Copying Theme Files${NC}"
cp -r Themes/* ~/.themes/
cp -r Apple-Darwin-For-Plymouth/darwin/* ~/Downloads/Apple-Darwin-For-Plymouth/darwin/
echo -e "${GREEN}Copying Fonts${NC}"
cp -r Fonts/* ~/.local/share/fonts/
echo -e "${GREEN}Copying Wallpapers${NC}"
cp -r Wallpapers/* ~/Pictures/

#Install the required gnome extensions
cd ~/Downloads/CustomizedPack/
echo -e "${CYAN}Starting  : ${NC}${YELLOW}Installing required extensions${NC}"
./gnome-ext-install.sh install user-theme@gnome-shell-extensions.gcampax.github.com dash-to-dock@micxgx.gmail.com blyr@yozoon.dev.gmail.com netspeed@hedayaty.gmail.com
clear
echo -e "${GREEN}Finished  : ${NC}${YELLOW}User Theme, Blyr, Dash to Dock, Net Speed Monitor extensions are installed.${NC}"

#Changing UI
## Application Theme
echo -e "${BLUE}Changing Theme${NC}"
dconf write /org/gnome/desktop/interface/gtk-theme "'McOS-MJV'"

## Cursor
echo -e "${BLUE}Changing Cursor${NC}"
dconf write /org/gnome/desktop/interface/cursor-theme "'El_Capitan_CursorsMODNew'"

## Icons
echo -e "${BLUE}Changing Icons${NC}"
dconf write /org/gnome/desktop/interface/icon-theme "'MacRemix'"

## Shell
echo -e "${BLUE}Changing Shell${NC}"
dconf write /org/gnome/shell/extensions/user-theme/name "'MacOS_HS'"

## Wallpaper
echo -e "${BLUE}Changing Wallpaper${NC}"
dconf write /org/gnome/desktop/background/picture-uri "'file:///home/$USER/Pictures/macOS-mojave-Desert-5.jpg'"
dconf write /org/gnome/desktop/background/picture-options "'zoom'"

## Lock Screen Wallpaper
echo -e "${BLUE}Changing Lock Screen Wallpaper${NC}"
dconf write /org/gnome/desktop/screensaver/picture-uri "'file:///home/$USER/Pictures/macOS-mojave-Desert-5.jpg'"
dconf write /org/gnome/desktop/screensaver/picture-options "'zoom'"

## Show Desktop Icons
echo -e "${BLUE}Enabling Desktop Icons${NC}"
dconf write /org/gnome/desktop/background/show-desktop-icons "true"

## Button Layout
echo -e "${BLUE}Moving Title Buttons to Left${NC}"
dconf write /org/gnome/desktop/wm/preferences/button-layout "'close,minimize,maximize:'"

##### Dash To Dock
## Monitor Placement
echo -e "${BLUE}Showing Dock on Primary Monitor Only${NC}"
dconf write /org/gnome/shell/extensions/dash-to-dock/preferred-monitor "0"

## Dock Placement
echo -e "${BLUE}Changing Dock Position to Bottom${NC}"
dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position "'BOTTOM'"

## Max Icon Size
echo -e "${BLUE}Setting Max Icon Size 32${NC}"
dconf write /org/gnome/shell/extensions/dash-to-dock/dash-max-icon-size "32"

## Autohide
echo -e "${BLUE}Enabling Dock Autohide${NC}"
dconf write /org/gnome/shell/extensions/dash-to-dock/dock-fixed "false"

## Show Launcher on Left
echo -e "${BLUE}Showing App Launcher on Left${NC}"
dconf write /org/gnome/shell/extensions/dash-to-dock/show-apps-at-top "true"

## Mouse Scroll Action
echo -e "${BLUE}Changing Mouse Scroll Action to Cycle Windows${NC}"
dconf write /org/gnome/shell/extensions/dash-to-dock/scroll-action "'cycle-windows'"

## Custom Dock Indicator
echo -e "${BLUE}Changing Dock Indicator${NC}"
dconf write /org/gnome/shell/extensions/dash-to-dock/custom-theme-running-dots "false"
dconf write /org/gnome/shell/extensions/dash-to-dock/custom-theme-customize-running-dots "false"

## Disable Custom Dock Shrink
echo -e "${BLUE}Disabling Custom Dock Shrink${NC}"
dconf write /org/gnome/shell/extensions/dash-to-dock/custom-theme-shrink "false"

## Dock Transparency Mode
echo -e "${BLUE}Changing Dock Transparency Mode${NC}"
dconf write /org/gnome/shell/extensions/dash-to-dock/transparency-mode "'DEFAULT'"

echo -e "${RED}Removing Downloaded Unnecessary Files${NC}"
cd ~/Downloads/
rm -rf CustomizedPack
rm CustomizedPack.tar.xz

echo -e "${YELLOW}Uninstalling Ubuntu Dock (It might be seen on lock screen)${NC}"
xterm -e 'sh -c "echo Ubuntu dock will be uninstalled. Please enter your password.; sudo apt-get remove gnome-shell-extension-ubuntu-dock; sudo apt update"'
echo -e "${CYAN}Theme Credit   : ${NC}${GREEN}paulxfce${NC}"
echo -e "${CYAN}Shell Credit   : ${NC}${GREEN}unc926${NC}"
echo -e "${CYAN}Cursor Credit  : ${NC}${GREEN}dcomim | krourke${NC}"
echo -e "${CYAN}Icons Credit   : ${NC}${GREEN}krourke | umayanga | zayronXIO${NC}"
echo -e "${GREEN}DONE. ENJOY ;)${NC}"
