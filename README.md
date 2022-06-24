# Bashy
Collection of shell scripts.


# Software required
[Git](https://git-scm.com)

[Pamac](https://gitlab.manjaro.org/applications/pamac)

[Calcurse](https://www.calcurse.org)

[Newsboat](https://newsboat.org)

[GNU Bash >= 5.1.16](https://www.gnu.org/software/bash)

[scrot](https://github.com/dreamer/scrot)

[feh](https://feh.finalrewind.org)

[youtube-dl](https://github.com/ytdl-org/youtube-dl)


# Installation instructions
0. Open a terminal window.
1. Clone the repository `git clone https://github.com/tricantivu/bashy.git`.
2. Open the .bashrc file in your home directory.
3. Prepend the absolute path of the cloned repository to the PATH environment variable as follows:


`PATH="${pathToRepository}:${PATH}"`


4. Save changes and exit.
5. Restart your shell.


# Script descriptions

* rss - Adds multiple RSS/Atom feeds to newsboat.


![GIF1](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/rss.gif)


* isip - Determines if a given string is an IPv4 address.


![GIF2](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/isip.gif)


* saveit - Backs up or restores newsboat and calcurse data inside a tarball.


![GIF3](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/saveit.gif)


* mchk - Show open ports, disk usage, checks for updates and user accounts without passwords for Arch/Debian/RHEL based distributions.


* chk4up - pamac wrapper to check for updates in packages installed from the AUR.


![GIF5](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/chk4up.gif)


* cc - Clears one or more ~/.cache directories.


* si - Shows some (shell, operating system, kernel, architecture, amount of installed packages, and distribution name) system information.


* adu - user(add|del) wrapper script to add or delete multiple users.


![GIF8](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/adu.gif)


* bfr - Batch file rename script.


![GIF9](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/bfr.gif)


* dl - youtube-dl wrapper script that reads URLs to download from standard input.


![GIF10](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/dl.gif)


* screenshot - scrot wrapper script.


![GIF11](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/screenshot.gif)


* spi - Show information of a process identifier.


![GIF12](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/spi.gif)


* wallee - feh wrapper script to set a random wallpaper from a directory.


![GIF13](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/wallee.gif)
