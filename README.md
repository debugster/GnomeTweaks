# Install Mac Themes on Ubuntu 18.04.* LTS
This script installs Themes, Shell Themes, Icons and Cursors that make you feel like Apple's macOS.

# This Customization Pack Includes
- 2 GTK Themes
- 2 Gnome Shell Themes
- 2 Cursor Themes
- 3 Icon Themes
- 5 Wallpapers
- 2 Fonts (For Gnome Shell)
- 1 Plymouth Theme (Optional)

# Credits
## GTK Themes
- [paulxfce](https://www.gnome-look.org/p/1241688/)
## Gnome Shell Themes
- [unc926](https://www.gnome-look.org/p/1213208/)
## Cursor Themes
- [dcomim](https://www.gnome-look.org/p/1241071/)
- [krourke](https://www.gnome-look.org/p/1148692/)
## Icon Themes
- [krourke](https://www.gnome-look.org/p/1148695/)
- [umayanga](https://www.gnome-look.org/p/1102582/)
- [zayronXIO](https://www.gnome-look.org/p/1210856/)
## Plymouth Theme
- [LozanoJack](https://www.gnome-look.org/p/1009320/)

# Installation
- **xtrem** must be installed in the system. To install **xterm**, open **Terminal** and execute:
```bash
sudo apt update
sudo apt install xterm
```
- Save [this](https://github.com/debugster/GnomeTweaks/blob/master/InstallMacTheme.sh) script on your desktop.
- Open **Terminal** again and execute
```bash
cd Desktop
chmod +x InstallMacTheme.sh
./InstallMacTheme.sh
```

# Caution
- Don't run this script as **sudo**.
- This script will open **xterm** several times to install some required packages. When promted, enter your password on **xterm** window.

# Installing Plymouth Theme (macOS like Boot Splash Screen) (Optional)
The installation of boot splash screen is made optional. To install it, follow:
- Go to [this link](https://www.dropbox.com/s/42mx0in9fbt8bvu/Apple-Darwin-For-Plymouth.zip) and download the file.
- Extract the downloaded file.
- Open **Terminal** in this direcroy and execute:
```bash
sudo mkdir /usr/share/plymouth/themes/darwin
sudo cp -r darwin/* /usr/share/plymouth/themes/darwin/
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/darwin/darwin.plymouth 100
sudo update-alternatives --config default.plymouth
```
- After execution the last command, you will promted with a list of plymouth themes. Enter the id of Darwin plymouth theme.
- Finally execute:
```bash
sudo update-initramfs -u
```
