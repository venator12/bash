# Useful Bash Commands

# Download
## root
```bash
wget --no-check-certificate https://raw.githubusercontent.com/venator12/bash/main/.bashrc -O /root/.bashrc
wget --no-check-certificate https://raw.githubusercontent.com/venator12/bash/main/.bash_aliases -O /root/.bash_aliases
```
# User
```bash
wget --no-check-certificate https://raw.githubusercontent.com/venator12/bash/main/.bashrc -O /home/$USER/.bashrc
wget --no-check-certificate https://raw.githubusercontent.com/venator12/bash/main/.bash_aliases -O /home/$USER/.bash_aliases
```

# Install
Place both scripts in the `user` and/or `root` directory.
For example:

```bash
/root/.bashrc
/root/.bash_aliases

/home/$USER/.bashrc
/home/$USER/.bash_aliases
```

# Bash Commands

## ls alias
List all directories and files.
```bash
ls = 'ls -lFah --color = yes'
l  = 'ls -lFah --color = yes'
```
## color alias
All these commands are colorized.
```bash
dir = 'dir --color = yes'
vdir = 'vdir --color = yes'
grep = 'grep --color = yes'
fgrep = 'fgrep --color = yes'
egrep = 'egrep --color = yes'
```
## cd alias
Fast change directory command, use only dots.
```bash
cd.. = 'cd ..'
.. = 'cd ..'
... = 'cd ../..'
.... = 'cd ../../..'
..... = 'cd ../../../..'
...... = 'cd ../../../../..'
....... = 'cd ../../../../../..'
........ = 'cd ../../../../../../..'
......... = 'cd ../../../../../../../..'
```
## clear
c to clear the terminal.
```bash
c = 'clear'
```
## mounted drives
Show all mounted drives.
```bash
mnt = "mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
```
## count files
Count all files in the current directory.
```bash
count = 'find . -type f | wc -l'
```
## find fast a file in the system
Find a file in the whole system with the 'f' command.
```bash
f = 'find / -type f -name'
f <filename>
```
## grep history
Grep a command in history.
```bash
gh = 'history|grep'
gh nano
```

## show path
Show the PATH variable.
```bash
path = 'echo -e ${PATH//:/\\n}'
```
## Info
Show info about the system.
```bash
meminfo = 'free -m -l -t'
cpuinfo = 'lscpu'
```
## Up/Down history navigation.
It will only jump to those commands in the history which start with the same fragment of a command.

## Archives
### Create a tar.gz archive
```bash
targz (./dir)
```
### Extract .tar.gz archive
```bash
untargz (./test.tar.gz)
```
## Show disk space
```bash
ssd
```
## extract different filetypes
```bash
extract (./testfile.tar.gz)
```
## Change directory and show files
Runs a ls immediately when you're inside a file.
```bash
cl ()
```
