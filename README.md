# linux
Linux stuff

# Tested Distros

|name|base|ver|kernel|de|vsc|dotnet|web|menu|dark|background|icons|date|term|vm|switch|sudo|
|---|---|---:|---:|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|[Debian](https://www.debian.org/)||9.5|4.9|GNOME|X|X|X|X|X|X<sup>[7]</sup>|X<sup>[8]</sup>|**O**|X<sup>[9]</sup>|X<sup>[10]</sup>|X|**O**|
|[Ubuntu](https://www.ubuntu.com/)|Debian|18.04||GNOME|X|X|X|X|X|X<sup>[7]</sup>|X<sup>[8]</sup>|**O**|X|X|X|X|
|[Mint](https://linuxmint.com/)|Ubuntu|||Cinnamon|X|
|[elementary OS](https://elementary.io/)|Ubuntu|||Pantheon|X|X|X|win+space|**O**|X|X|**O**|X|X|X|X|
|[ZorinOS](https://zorinos.com/)|Ubuntu<sup>16.04</sup>|12|4.15|XFCE|X|X|X|X|X|X|X|X|X|X|X|X|
|[Lubuntu](https://lubuntu.me/)|Ubuntu|||LXDE|X|X|X|**O**|X|X|X|X|X|**O**|X|X|
|[Kubuntu](https://kubuntu.org/)|Ubuntu|18.04|4.15|KDE|X|X|X|X|X|X|X|X|settings|X|X|X|
|[Linux Lite](https://www.linuxliteos.com/)|Ubuntu|4.0|4.15|XFCE|X|X|X|X|X|X|X|X|X|X|X|X|
|[Xubuntu](https://xubuntu.org/)|Ubuntu|18.04|4.15|XFCE|X|X|X|ctrl+esc<sup>[1]</sup>|settings|X|X|X|X|X|X|X|
|[Ubuntu MATE](https://ubuntu-mate.org/)|Ubuntu|||MATE|X|X|X|X|X|X|X|**O**|X|X|X|X|
|[Deepin](https://www.deepin.org/)|Ubuntu|
|[anitX](https://antixlinux.com)|Debian|
|[MX Linux](https://mxlinux.org/)|antiX|
|[Kali](https://www.kali.org/)|Debian|
|[Tails](https://tails.boum.org/)|Debian|
|[Q4OS](https://q4os.org/)|Debian|2.6|4.9|Trinity|X|X|X|X|X<sup>[2]</sup>|X|X|X<sup>[3]</sup>|X<sup>[4]</sup>|X|X|X|
|[Elive](https://www.elivecd.org/)|Debian|3.0||Enlightenment|
|[Arch Linux](https://www.archlinux.org/)|
|[Manjaro](https://manjaro.org/)|Arch Linux|17.1|4.14|XFCE|X|X|[X](https://stackoverflow.com/questions/44117840/can-i-set-listen-urls-in-appsettings-json-in-asp-net-core-2-0-preview)|X|X|X|X|X|X|X|X|X|
|[RedHat](https://www.redhat.com/)|
|[Fedora](https://getfedora.org/)|Red Hat|||GNOME|X|X|X|
|[CentOS](https://www.centos.org/)|Red Hat|
|[Mageia](http://www.mageia.org//)|Red Hat|||KDE|X|**O**|**O**|X|X|X|X|X|settins|X|X|X|
|[PCLinuxOS](http://www.pclinuxos.com/)|Red Hat|
|[Slackware](http://www.slackware.com)|
|[openSUSE](https://www.opensuse.org/)|Slackware|||KDE|X|
|[FreeBSD](https://www.freebsd.org/)|
|[Gentoo](https://www.gentoo.org)|FreeBSD|
|[Solus](https://getsol.us/home/)||3.9999|4.18|Budgie|X<sup>[5]</sup>|**O**|**O**|X|X<sup>[6]</sup>|X<sup>[7]</sup>|X<sup>[8]</sup>|1/2|X<sup>[9]</sup>|X|X|X|
|[ReactOS](http://www.reactos.org/)|

> Notes:
> 
> <sup>[1]</sup> Configurable to Win key.
> <sup>[2]</sup> KDE Themes. Not all windows' background change.
> <sup>[3]</sup> Date/Time formatting.
> <sup>[4]</sup> Control Panel > Regional & Accessibility > Keyboard Shortcuts > Command Shortcuts (tab).
> <sup>[5]</sup> Install from tar. $ sudo eopkg gconf.
> <sup>[6]</sup> Budgie Desktop Settings.
> <sup>[7]</sup> $ gsettings set org.gnome.desktop.background primary-color '#152233'.
> <sup>[8]</sup> $ gsettings set org.gnome.desktop.background show-desktop-icons false.
> <sup>[9]</sup> Settings > Keyboard > Add shortcut.
> <sup>[10]</sup> Needs manual installation from mounted ISO and missing packages.


> Labels: **de** - default Desktop Environment; **vsc** - runs Visual Studio Code; **dotnet** - runs and debugs .Net; **web** - runs and debugs .Net web app; **menu** - has shortcut to search and open apps; **dark** - has a dark theme; **background** - allows custom color background; **icons** - allows removing icons from desktop; **date** - allows YYYY-MM-DD HH:mm date display; **term** - allows terminal shortcut; **Vm** - auto resizes in Virtual Machine; **switch** - shortcut to swtich/cycle opened apps; **sudo** - has sudo installed


# Desktop Environments to Test
- [Cinnamon](https://cinnamon-spices.linuxmint.com/)
- [Unity](https://unity8.io/)
- [GNOME](https://www.gnome.org/)
- [KDE](https://www.kde.org/)
  - [KDE Plasma](https://www.kde.org/plasma-desktop)https://community.c9.io/t/installing-apt-transport-https-issue/10994
  - [Trinity](https://www.trinitydesktop.org/)
- [XFCE](https://xfce.org/)
- [LXDE](https://lxde.org/)
  - [PIXEL](https://www.raspberrypi.org/blog/introducing-pixel/)
- [MATE](https://mate-desktop.org/)
- [Enlightenment](https://www.enlightenment.org/)
- [Pantheon](https://wiki.archlinux.org/index.php/Pantheon)
- [LXQt](https://lxqt.org/)
- [Budgie](https://getsol.us/solus/experiences/)

[Ubuntu DEs list](https://www.ubuntupit.com/best-linux-desktop-environment-reviewed-and-compared/)

## DE requirements:
1. Menu/Apps shorcut (Win-key)
2. Darktheme
3. Solid Color background
4. No icons in desktop
5. Customizable date format
6. Terminal Shortcut
7. Resize VM screen
8. Cycle apps
9. sudo

## Packge Managers
|distro|pm|
|---|---|
|Debian|apt|
|Red Hat|dnf (yum)|
|Arch|pacman|
|SUSE|zypper|


[PMs commands](https://en.wikipedia.org/wiki/Package_manager#Comparison_of_commands)
