# Bashy
Collection of Bash scripts.


# Software required
[Git](https://git-scm.com)

[Pamac](https://gitlab.manjaro.org/applications/pamac)

[Calcurse](https://www.calcurse.org)

[Newsboat](https://newsboat.org)

[GNU Bash >= 5.1.16](https://www.gnu.org/software/bash)


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

* isip - Determines if a given string is an IPv4 address.

* saveit - Backs up or restores newsboat and calcurse data inside a tarball.

* schk - Performs a maintenance check for Arch/Debian/RHEL based distributions.

* chk4up - pamac wrapper to check for updates in packages installed from the AUR.

* ambystoma - Clears the ~/.cache directory of one or more programs and deletes old log files.

* musony - Shows some (shell, amount of installed packages and distribution name) system information.
