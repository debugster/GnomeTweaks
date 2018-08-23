# Install Mac Themes on Ubuntu 18.04.* LTS
This script installs Themes, Shell Themes, Icons and Cursors that make you feel like Apple's macOS.

# This Customization Pack Includes
- 2 **_GTK_** Themes
- 2 **_Gnome Shell_** Themes
- 2 **_Cursor_** Themes
- 3 **_Icon_** Themes
- 5 **_Wallpapers_**
- 2 **_Fonts_** (For Gnome Shell)
- 1 **_Plymouth_** Theme (Optional)

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

# Installation
- **xtrem** must be installed in the system. To install **xterm**, open **Terminal** and execute:
```bash
sudo apt update
sudo apt install xterm
```
- Save [this](https://github.com/debugster/GnomeTweaks/blob/master/InstallMacTheme.sh) script on your desktop.
### Caution
- Don't run this script as **sudo**.
- This script will open **xterm** several times to install some required packages. When promted, enter your password on **xterm** window.

- Open **Terminal** again and execute:
```bash
cd Desktop
chmod +x InstallMacTheme.sh
./InstallMacTheme.sh
```

# Additional Installation
### Installing Plymouth Theme (macOS like Boot Splash Screen)
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
```bash
sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt-get update
sudo apt-get install albert
```
- After installation, you can open Albert from Menu/Dash and set hotkey to activate albert.

# Issues
- No issues so far.
