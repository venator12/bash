# ls alias
alias ls='ls -lFah --color=yes'
alias l='ls -lFah --color=yes'

# color alias
alias dir='dir --color=yes'
alias vdir='vdir --color=yes'
alias grep='grep --color=yes'
alias fgrep='fgrep --color=yes'
alias egrep='egrep --color=yes'

# cd alias
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'

# clear
alias c='clear'

# mounted drives
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

# count files in this directory
alias count='find . -type f | wc -l'

# find fast a file in the system
alias f='find / -type f -name'

# grep history
alias gh='history|grep'

# show path
alias path='echo -e ${PATH//:/\\n}'

# Info
alias meminfo='free -m -l -t'
alias cpuinfo='lscpu'

# it will only jump to those commands in the history which start with the same fragment of a command.
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# create .tar.gz
targz () { tar -zcvf $1.tar.gz $1; }
# extract .tar.gz
untargz() { tar -zxvf $1; }

ssd () {
  echo "Device         Total  Used  Free  Pct MntPoint"
  df -h | grep "/dev/sd"
  df -h | grep "/mnt/"
}

# extract automatic this filetypes
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

# Runs a ls immediately when you're inside a file.
cl () {
 if [ -d $1 ] ; then
	cd $1
	ls
 else
	echo "cl: '$1' No such directory"
 fi
}