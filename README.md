# Introduction
Installing macOS themes on your favourite Linux Distro.

# Requirements
- **Operating System** : Any **Debian** based OS like **Ubuntu**, **Kali Linux** etc.
- **Desktop Environment** : **Gnome**

# Tested on
- **Ubuntu 18.04 LTS** with **Gnome 3.28.2**
- **Ubuntu 18.04.1 LTS** with **Gnome 3.28.2**
- **Kali Linux 2018.2** with **Gnome 3.28**

# Choose Your OS

- ## [Ubuntu](#install-macos-themes-on-ubuntu)
- ## [Kali Linux](#install-macos-themes-on-kali-linux)

# This Customization Pack Includes
- 2 **_GTK_** Themes
- 2 **_Gnome Shell_** Themes
- 2 **_Cursor_** Themes
- 3 **_Icon_** Themes
- 5 **_Wallpapers_**
- 2 **_Fonts_** (For Gnome Shell)
- 1 **_Plymouth_** Theme (Optional, only for Ubuntu)

# Credits
### GTK Themes
- [paulxfce](https://www.gnome-look.org/p/1241688/)
### Gnome Shell Themes
- [unc926](https://www.gnome-look.org/p/1213208/)
### Cursor Themes
- [dcomim](https://www.gnome-look.org/p/1241071/)
- [krourke](https://www.gnome-look.org/p/1148692/)
### Icon Themes
- [krourke](https://www.gnome-look.org/p/1148695/)
- [umayanga](https://www.gnome-look.org/p/1102582/)
- [zayronXIO](https://www.gnome-look.org/p/1210856/)
### Plymouth Theme
- [LozanoJack](https://www.gnome-look.org/p/1009320/)

# Install macOS Themes on Ubuntu
- **xtrem** must be installed in the system. To install **xterm**, open **Terminal** and execute:
```bash
sudo apt update
sudo apt install xterm
```
- Save [this](https://github.com/debugster/GnomeTweaks/blob/master/macUbuntu.sh) script on your desktop.
### Caution
- Don't run this script as **sudo**.
- This script will open **xterm** several times to install some required packages. When promted, enter your password on **xterm** window.

- Open **Terminal** again and execute:
```bash
cd Desktop
chmod +x macUbuntu.sh
./macUbuntu.sh
```
- Log Out/Restart your computer.

# Install macOS Themes on Kali Linux
- **xtrem** must be installed in the system. To install **xterm**, open **Terminal** and execute:
```bash
sudo apt update
sudo apt install xterm
```
- Save [this](https://github.com/debugster/GnomeTweaks/blob/master/macKali.sh) script on your desktop.
### Caution
- Don't run this script as **sudo** except you are the **root** user.
- This script will open **xterm** several times to install some required packages. When promted, enter your password on **xterm** window (except **root** user).

- Open **Terminal** again and execute:
```bash
cd Desktop
chmod +x macKali.sh
./macKali.sh
```

# Additional Installation
### Installing Plymouth Theme (macOS like Boot Splash Screen, only for Ubuntu)
The installation of boot splash screen is made optional. To install it, follow:
- Open File Manager using root access. Open **Terminal** and execute:
```bash
sudo nautilus
```
- Go to **_Downloads/Apple-Darwin-For-Plymouth/_** folder and Copy **_darwin_** folder.
- Go to **_/usr/share/plymouth/themes/_** and Paste.
- Open **Terminal** again and execute:
```bash
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/darwin/darwin.plymouth 100
sudo update-alternatives --config default.plymouth
```
- After executing the last command, you will be promted with a list of plymouth themes. Enter the id of Darwin plymouth theme.
- Finally execute:
```bash
sudo update-initramfs -u
```
### Albert Spotlight (macOS like Spotlight)
If you like to install **Albert Spotlight**, you may follow:
- Open **Terminal** end execute:
#### On Ubuntu
```bash
wget -nv -O Release.key \
  https://build.opensuse.org/projects/home:manuelschneid3r/public_key
sudo apt-key add - < Release.key
sudo apt update
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list"
sudo apt update
sudo apt install albert
```
#### On Kali
```bash
wget -nv -O Release.key \
  https://build.opensuse.org/projects/home:manuelschneid3r/public_key
sudo apt-key add - < Release.key
sudo apt update
sudo echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/Debian_Testing/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo apt update
sudo apt install albert
```
- After installation, you can open Albert from Menu/Dash and set hotkey to activate albert.

# Known Issues
### System Monitor, Calculator don't use GTK Themes (on Ubuntu)
- This is because those applications are installed as snap packages. To verify, execute:
```bash
snap list
```
- The snap execution environment doesn't see any of the themes on your system (local or system-wide). So this is somewhat an expected behaviour.
- As a workaround, you may want to remove those snap applications. To remove those, execute:
```bash
sudo snap remove gnome-system-monitor
sudo snap remove gnome-calculator
```
- And install their apt versions. To install, execute:
```bash
sudo apt install gnome-system-monitor gnome-calculator
```
