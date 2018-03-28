#!/bin/zsh

alias c="clear"
alias typora="open -a typora"
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias ra='ranger'
alias icdrive='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'
alias mutt='neomutt'
alias m='neomutt'

alias td='todolist'
alias todo='todolist'

alias civ='freeciv-gtk2'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# all in one homebrew, gem update commands
alias brewup='brew update && brew upgrade && brew cu -a -f -y && brew cleanup'
#alias gemup='sudo gem update --system && sudo gem update --no-rdoc --no-ri'
alias npmup='ncu -g && npm -g outdated && npm -g update'
alias upall='brewup && npmup'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# firewall management
#alias port-forward-enable="echo 'rdr pass inet proto tcp from any to any port 2376 -> 127.0.0.1 port 2376' | sudo pfctl -ef -"
#alias port-forward-disable="sudo pfctl -F all -f /etc/pf.conf"
#alias port-forward-list="sudo pfctl -s nat"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Flush DNS cache
alias flushdns="dscacheutil -flushcache"

# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# Disc utils
alias diskspace_report="df -P -kHl"
alias free_diskspace_report="diskspace_report"

alias vtop="vtop --theme wizard"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes/*; sudo rm -rfv ~/.Trash/*; sudo rm -rfv /private/var/log/asl/*.asl"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Hosts
alias hosts='sudo $EDITOR /etc/hosts'

# Do a Matrix movie effect of falling characters
function matrix() {
clear ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) ;sleep 0.05; done|gawk '{ letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'
}

#reload
alias reload!='. ~/.zshrc'
