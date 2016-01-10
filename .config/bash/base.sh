# vim: syn=sh

# set a fancy prompt, overwritten by liquidprompt if existant
PS1='\u@\h:\w\$ '
source $HOME/opt/liquidprompt/liquidprompt

# history
export HISTSIZE=8196
export HISTFILESIZE=8196
# Lines which begin with a space character are not entered on the history list, lines
# matching the last history line are not entered.
export HISTCONTROL=ignoreboth
# append history list when the shell exits, rather than overwriting the file.
shopt -s histappend
history -a

# Tab completion: ignore files and directories
export FIGNORE="CVS:.svn:.git"

# ls aliases and color settings
eval `dircolors`
alias ls='ls --color=auto' # alias is base for following aliases (color works on all)
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# grep options (skip devices and show automatic colors)
alias grep='grep --color=auto -d skip'
alias zgrep='zgrep --color=auto -d skip'
alias egrep='egrep --color=auto -d skip'
alias zegrep='zegrep --color=auto -d skip'
alias fgrep='fgrep --color=auto -d skip'
alias zfgrep='zfgrep --color=auto -d skip'

# pager and editor
export LESS='-S -q -Ri -X -F'
export PAGER="/usr/bin/less $LESS"
export LESSOPEN="|/usr/bin/lesspipe.sh %s"
export EDITOR="vim"

export TEMP=/tmp
export TMP=$TEMP

# core file size limit in kbyte
ulimit -c 20000
# terminal device access form other users not allowed (talk and write), see mesg(1)
mesg n

# english man pages are often of better quality
export MANOPT="-L C"

# make SDL use pulseaudio
export SDL_AUDIODRIVER="pulse"

# administrative stuff
alias halt='sudo /sbin/halt'
alias iptraf='sudo /usr/sbin/iptraf'

# other
alias iso_to_utf8='iconv -f iso-8859-15 -t UTF-8'
alias m='mutt -y'
