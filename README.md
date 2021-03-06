# Bashy
Collection of shell scripts.


# Dependencies
* [git](https://git-scm.com) 2.36.1

* [feh](https://feh.finalrewind.org) 3.9

* [bash](https://www.gnu.org/software/bash) >= 5.1.16

* [sudo](https://www.sudo.ws) 1.9.11p3

* [scrot](https://github.com/dreamer/scrot) 1.7

* [pamac](https://gitlab.manjaro.org/applications/pamac) 10.4.1-1

* [iputils](https://github.com/iputils/iputils) 20211215-1

* [calcurse](https://www.calcurse.org) 4.8.0

* [newsboat](https://newsboat.org) 2.27.0

* [coreutils](https://www.gnu.org/software/coreutils) 9.1

* [procps-ng](https://gitlab.com/procps-ng/procps) 3.3.17-1

* [youtube-dl](https://github.com/ytdl-org/youtube-dl) 2021.12.17

* [shellcheck](https://www.shellcheck.net) 0.8.0 (**optional**)


# Installation
0. Open a terminal window.
1. Clone the repository


`git clone https://github.com/tricantivu/bashy.git`.


2. Open the .bashrc file in your home directory.
3. Prepend the absolute path of the cloned repository to the PATH environment variable as follows:


`PATH="<pathToRepository>/src:${PATH}"`


4. Save changes and exit.
5. Restart your shell.


# Descriptions and showcase

* rss - Adds multiple RSS/Atom feeds to newsboat.


![GIF1](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/rss.gif)


* isip - Determines if a given string is an IPv4 address.


![GIF2](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/isip.gif)


* saveit - Backs up or restores newsboat and calcurse data inside a tarball.


![GIF3](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/saveit.gif)


* mchk - Show open ports, disk usage, checks for updates and user accounts without passwords for Arch/Debian/RHEL based distributions.


![GIF4](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/mchk.gif)


* chk4up - pamac wrapper to check for updates in packages installed from the AUR.


![GIF5](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/chk4up.gif)


* clcd - Clears one or more ~/.cache directories.


![GIF6](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/clcd.gif)


* si - Shows some (shell, operating system, kernel, architecture, amount of installed packages, and distribution name) system information.


![GIF7](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/si.gif)


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


* f - Write regular files.


![GIF14](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/f.gif)


* pull - Pull changes from multiple Git repositories.


![GIF15](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/pull.gif)


* che - Change account expiration dates with relative time units.


![GIF15](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/che.gif)
