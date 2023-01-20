# .bashrc_aliases


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

# alias to show the date
alias da='date "+%Y-%m-%d %A %T %Z"'

# Alias's to modified commands
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -iv'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias vi='vim'

# Alias's for multiple directory listing commands
alias l='ls'
alias la='ls -Alh' # show hidden files
alias ls='ls -aFh --color=always' # add colors and file type extensions
#alias ls='ls -F --color=auto'
alias lx='ls -lXBh' # sort by extension
alias lk='ls -lSrh' # sort by size
alias lc='ls -lcrh' # sort by change time
alias lu='ls -lurh' # sort by access time
alias lr='ls -lRh' # recursive ls
alias lt='ls -ltrh' # sort by date
alias lm='ls -alh |more' # pipe through 'more'
alias lw='ls -xAh' # wide listing format
alias ll='ls -Fls' # long listing format
#alias ll='ls -alh --color=auto'
alias labc='ls -lap' #alphabetical sort
alias lf="ls -l | egrep -v '^d'" # files only
alias ldir="ls -l | egrep '^d'" # directories only

# alias chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# YT-DLP
alias youtube-dl="youtube-dl -o '%(title)s.%(ext)s'"
alias mp3='youtube-dl -x --audio-format "mp3" --audio-quality 0 --embed-thumbnail $*'

# FILE SIZE AND STORAGE
alias lt='ls --human-readable --color=auto --size -1 -S --classify' # file size sorted
alias dirsize='sudo du -hx --max-depth=1'
alias dirusage='du -ch | grep total' # Grabs the disk usage in the current directory
alias diskusage='df -hl --total | grep total' # Gets the total disk usage on machine
alias partusage='df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs' # Shows the individual partition usages without the temporary memory values
alias usage10='du -hsx * | sort -rh | head -10' # Gives you what is using the most space. Both directories and files. Varies on current directory

# Alias's to show disk space and space used in a folder
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
alias mountedinfo='df -hT'

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# SHA1
alias sha1='openssl sha1'

# DOCKER COMMON - All docker commands start with "d"
alias dexec='sudo docker exec -ti'
# # List all containers by status using custom format
alias dps='sudo docker ps -a'
# # List the last 50 lines of logs
alias dlogs='sudo docker logs -tf --tail="50" '
# # List all containers IP 
alias dips="sudo docker ps -q | xargs -n 1 docker inspect --format '{{json .}}' | jq -rs 'map(.Name,.NetworkSettings.Networks[].IPAddress) | .[]'"
# # List all containers by status using custom format
alias dpsa='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Status}}"'
# # Removes a container, it requires the container name \ ID as parameter
alias drm='docker rm -f'
# # Removes an image, it requires the image name \ ID as parameter
alias drmi='docker rmi'
# # Lists all images by repository sorted by tag name
alias dimg='docker image ls --format "table {{.Repository}}\t{{.Tag}}\t{{.ID}}" | sort'
# # Lists all persistent volumes
alias dkvlm='docker volume ls'
# # Diplays a container log, it requires the image name \ ID as parameter
alias dlgs='docker logs'
# # Streams a container log, it requires the image name \ ID as parameter
alias dlgsf='docker logs -f'
# # Initiates a session withing a container, it requires the image name \ ID as parameter followed by the word "bash"
alias dterm='docker exec -it'
# # Starts a container, it requires the image name \ ID as parameter
alias dstrt='docker start'
# # Stops a container, it requires the image name \ ID as parameter
alias dstp='docker stop'

# SEARCH AND FIND
alias gh='history|grep' # search bash history
alias findr='sudo find / -name'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Search files in the current folder
alias f="find . | grep "

# GIT AND SITE MANAGEMENT
alias gpush='git push'
alias gstore='git config credential.helper store'
alias gs="git status"
alias gpull="git pull"
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
alias openports='netstat -nape --inet'
alias portsused='sudo netstat -tulpn | grep LISTEN'
alias showports='netstat -lnptu'
alias showlistening='lsof -i -n | egrep "COMMAND|LISTEN"'
alias ping='ping -c 5'
alias ipe='curl ipinfo.io/ip' # external ip
alias myip='hostname -I'
alias myipe='curl https://ifconfig.co/json' # external ip
alias header='curl -I' # get web server headers 
alias torhip='curl --proxy localhost:8888 http://ifconfig.io' 
alias torsip='curl --proxy socks5h://localhost:1080 http://ipinfo.io'
alias torhck='curl --proxy localhost:8888 https://check.torproject.org/api/ip' 
alias torsck='curl --proxy socks5h://localhost:1080 https://check.torproject.org/api/ip'


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
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

#######################################################
# SPECIAL FUNCTIONS
#######################################################

# Extracts any archive(s) (if unp isn't installed)
extract () {
	for archive in $*; do
		if [ -f $archive ] ; then
			case $archive in
				*.tar.bz2)   tar xvjf $archive    ;;
				*.tar.gz)    tar xvzf $archive    ;;
				*.bz2)       bunzip2 $archive     ;;
				*.rar)       rar x $archive       ;;
				*.gz)        gunzip $archive      ;;
				*.tar)       tar xvf $archive     ;;
				*.tbz2)      tar xvjf $archive    ;;
				*.tgz)       tar xvzf $archive    ;;
				*.zip)       unzip $archive       ;;
				*.Z)         uncompress $archive  ;;
				*.7z)        7z x $archive        ;;
				*)           echo "don't know how to extract '$archive'..." ;;
			esac
		else
			echo "'$archive' is not a valid file!"
		fi
	done
}

