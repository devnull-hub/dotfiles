

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
alias gi="cd ~/git"
alias h="cd ~"


# YT-DLP
alias youtube-dl="youtube-dl -o '%(title)s.%(ext)s'"
alias mp3='youtube-dl -x --audio-format "mp3" --audio-quality 0 --embed-thumbnail $*'

# FILE SIZE AND STORAGE
alias l="ls"
alias ls='ls -F --color=auto'
alias ll='ls -alh --color=auto'
alias lt='ls --human-readable --color=auto --size -1 -S --classify' # file size sorted
alias dirsize='sudo du -hx --max-depth=1'
alias dirusage='du -ch | grep total' # Grabs the disk usage in the current directory
alias diskusage='df -hl --total | grep total' # Gets the total disk usage on machine
alias partusage='df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs' # Shows the individual partition usages without the temporary memory values
alias usage10='du -hsx * | sort -rh | head -10' # Gives you what is using the most space. Both directories and files. Varies on current directory

# DOCKER COMMON - All docker commands start with "d"
alias dexec='sudo docker exec -ti'
alias dps='sudo docker ps -a'
alias dlogs='sudo docker logs -tf --tail="50" '
alias dips="sudo docker ps -q | xargs -n 1 docker inspect --format '{{json .}}' | jq -rs 'map(.Name,.NetworkSettings.Networks[].IPAddress) | .[]'"

# SEARCH AND FIND
alias gh='history|grep' # search bash history
alias findr='sudo find / -name'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# GIT AND SITE MANAGEMENT
alias gpush='git push'
alias gstore='git config credential.helper store'
alias gs="git status"
alias gp="git pull"
alias ggraph='git log --all --decorate --oneline --graph'

# INSTALLATION AND UPGRADE
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias install='sudo apt-get install'
alias finstall='sudo apt-get -f install'
alias rinstall='sudo apt-get -f install --reinstall'
alias uninstall='sudo apt-get remove'
alias search='sudo apt-cache search'

# SHUTDOWN AND RESTART
alias shutdown='sudo shutdown -h now'
alias reboot='sudo reboot'

# NETWORKING
alias portsused='sudo netstat -tulpn | grep LISTEN'
alias showports='netstat -lnptu'
alias showlistening='lsof -i -n | egrep "COMMAND|LISTEN"'
alias ping='ping -c 5'
alias ipe='curl ipinfo.io/ip' # external ip
alias header='curl -I' # get web server headers 

# MISCELLANEOUS
alias wget='wget -c'
alias c="cat"
alias tree='tree -C'
alias watch='watch --color'
alias cleanphoto="exiftool -all= $*"
alias q="exit"
alias clear='printf "\033c"'
alias t="tmux"

# Python
alias webserver='python3 -m http.server'

# SYSTEM MONITORING
alias meminfo='free -m -l -t' # memory usage
alias psmem='ps auxf | sort -nr -k 4' # get top process eating memory
alias psmem10='ps auxf | sort -nr -k 4 | head -10' # get top process eating memory
alias pscpu='ps auxf | sort -nr -k 3' # get top process eating cpu
alias pscpu10='ps auxf | sort -nr -k 3 | head -10' # get top process eating cpu
alias cpuinfo='lscpu' # Get server cpu info
alias free='free -h'