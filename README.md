# What is this?

A collection of shell scripts written just for fun and learning aimed towards
UNIX and Linux systems.

# Possible questions

* Why is the commit history overwritten so much?

To start from scratch and correct any mistakes I made (*e.g* illogical commit
dates).

* Why do I get an error message when running `git pull`?

Because I forcefully pushed commits. To fix it, delete the repository's
directory and clone it again.

# Dependencies ✅

* bash >= 5
* git >= 2.40.1
* coreutils >= 9.1
* Any POSIX compliant shell (*e.g* `dash`)

## Per script

| *dl*                     | *si*           | *che*            | *chk4up*           | *screenshot*         |
| ------------------------ | -------------- | ---------------- | ------------------ | -------------------- |
| youtube-dl >= 2021.12.17 | apt >= 2.7.0   | shadow >= 4.12.3 | pamac >= 10        | scrot >= 1.9         |
|                          | dnf >= 4.15.0  |                  | libnotify >= 0.8.2 | libnotify >= 0.8.2   |
|                          | pacman >= 6    |                  |                    |                      |

# Installation ⬇

0. Get required software.
1. Clone repository.

`git clone https://github.com/tricantivu/bashy.git`.

2. Run (**from repository's root**):

`./install.sh`

# Coding style

## Sections

1. [Indentation](#indentation)
2. [Shebang](#shebang)
3. [Quoting](#quoting)
4. [Variables](#variables)
5. [Constants](#constants)
6. [Functions](#functions)
7. [Arithmetic](#arithmetic)
8. [Loops](#loops)
9. [Conditions](#conditions)
10. [Switch-Case](#switch-case)
11. [Traps](#traps)
12. [ShellCheck](#traps)

### Indentation

* 4 spaces.

```shell
for (( ;; )); do

    printf 'y\n'

done
```

### Shebang

Use the `env` command without options that are not specified by
[POSIX](https://www.man7.org/linux/man-pages/man1/env.1p.html) (*e.g* `-S`).

---

*POSIX scripts*:

```shell
#!/usr/bin/env sh
```

---

*Non-POSIX scripts*:

```shell
#!/usr/bin/env bash
```

---

### Quoting

* Single quote strings without parameter expansions.

```shell
printf '%s\n' 'Success!'
```

```shell
echo 'Failure!'
```
* Do not quote parameters expanding to numerical values.

### Variables

* Names are snake cased. Except for loop counters, they must be lowercase
  letters.

```shell
i=0 j=0 k=0
```

```shell
parent_node
```

* Initialized or declared without `declare` builtin command.

### Constants

* Names must be in SCREAMING\_SNAKE\_CASE.

```shell
readonly INT_MAX=32767
```

* Initialized with `readonly` builtin command.

```shell
readonly LONG_MAX=2147483647
```

### Functions

* Define them with inline curly braces.

* Write a space after the closing parenthesis.

* Names are snake cased, abbreviated or full words.


```shell
getaddrinfo() {

    :
}
```


```shell
get_current_dir_name() {

    :
}
```

### Arithmetic

* Avoid floating point numbers.

* Surround expressions with a space.

```shell
(( i * 3 ))
```

* Check parameters expand to one or more without operators.

```shell
(( UID )) || exit 1
```

* Check parameters expand to zero without operators.

```shell
(( EUID )) && exit 1
```

* If you are not scripting with a POSIX shell, use unary operators to increment
  or decrement variables. Otherwise, use arithmetic expansions.

---

*Non-POSIX*:

```shell
(( i++ ))
```

```shell
(( j-- ))
```

---

*POSIX*:

```shell
i=$(( i + 1 ))
```

```shell
j=$(( j - 1 ))
```

---

### Loops

* Bodies must preceded and followed by a blank line.

```shell
for i in {1..10}; do

    echo "${i}"

done
```

```shell
while (( RANDOM < 1000 )); do

    echo 'Hello'

done
```

```shell
until (( 1 = 2 )); do

    :

done
```

* Do not write them inline.

* Preferably, iterate using brace expansions. However, C like loops are allowed.

### Conditions

* Use logical operators for trivial conditions.

```shell
if [[ "${REPLY}" == [Nn] ]]; then
    exit

fi
```

⤵

```shell
[[ "${REPLY}" == [Nn] ]] && exit
```

Equivalently for negated conditions:

```shell
if ! [[ -f /etc/fstab ]]; then
    echo 'Your system is broken!'

fi
```

⤵

```shell
[[ -f /etc/fstab ]] || echo 'Your system is broken!'
```

* Use command groups when there is more than one statement to execute if a
  command fails or succeeds (*i.e* `$? > 0` and `$? == 0` respectively).

```shell
while read -r line; do

    [[ "${line}" =~ ^root ]] && break

done < /etc/passwd || {

    echo 'Hmm?'

    exit 1
}
```

```shell
while read -r line; do

    [[ "${line}" =~ ^(/usr)?/bin/bash$ ]] && break

done < /etc/shells && {

    echo 'Bash is a valid login shell'

    exit 0
}
```

### *"Switch-case"*

* Patterns must be followed by a blank line.

* Semicolons must be on a new line and at the same indentation level as its
  corresponding pattern.

```shell
case "${USER}" in
    (root)

        echo 'I am almost Groot!'
    ;;
    (groot)

        echo 'I am Groot!'
    ;;
esac
```

### *Traps*

* Use complete signal names.

* Sort command lines by length.

```shell
trap 'rm "${TMPFILE}"' EXIT
trap "printf '\e[2J\e[H'" EXIT
```

## ShellCheck

* Do not prefix codes with `SC`.

```shell
# shellcheck disable=2086
echo $*
```


# Scripts

### *rss* - Add feeds to Newsboat.

![rss](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/rss.gif)


### *chk4up* - Update AUR packages with desktop notifications.

![chk4up](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/chk4up.gif)


### *si* - System information script.

![si](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/si.gif)


### *screenshot* - scrot wrapper.

![screenshot](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/screenshot.gif)


### *spi* - Process information command line utility.

![spi](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/spi.gif)


### *che* - Change account expiration dates with relative time units.

![che](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/che.gif)

### *sysexits* - Lookup sysexits code names, values and descriptions.

![sysexits](https://raw.githubusercontent.com/tricantivu/bashy/master/gifs/sysexits.gif)
