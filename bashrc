#
# ~/.bashrc
#


#####################
#                   #
#       ALIAS       #
#                   #
#####################

# NAVIGATION
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'


alias youtube-dl="youtube-dl -o '%(title)s.%(ext)s'"
alias mp3='youtube-dl -x --audio-format "mp3" --audio-quality 0 --embed-thumbnail $*'
alias webserver='python3 -m http.server'
alias gstore='git config credential.helper store'
alias gs="git status"
alias q="exit"
alias clear='printf "\033c"'
alias cleanphoto="exiftool -all= $*"


#####################
#                   #
#     SHORTCUTS     #
#                   #
#####################

alias d="cd ~/Downloads"
alias gh="cd ~/GitHub"
alias h="cd ~"
alias t="cd ~/Desktop/temp"

alias t="tmux"

# FILE SIZE AND STORAGE
alias l="ls"
alias ls='ls -F --color=auto'
alias ll='ls -alh --color=auto'
alias lt='ls --human-readable --color=auto --size -1 -S --classify' # file size sorted
alias dirsize='sudo du -hx --max-depth=1'
alias dirusage='du -ch | grep total' # Grabs the disk usage in the current directory


alias c="cat"
alias py="python"
alias tree='tree -C'
alias ls='ls -sh1 --color=auto'
alias ip='ip -c'
alias pcregrep='pcregrep --color=auto'
alias watch='watch --color'


