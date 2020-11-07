#general terminal
alias s='ls -CF'
alias lt='ls --human-readable --size -1 -S --classify'
alias please='echo sudo $(history -p !!) && sudo $(history -p !!)'
alias cd..='cd ..'
alias cpv='rsync -r -ah --info=progress2'
alias ggrep='grep -I --exclude-dir="installed_" --exclude="tags" -r'
alias d="df -h"
alias untar='tar -zxvf '
alias wget='wget -c '
alias hs='history | grep'

#python
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'

#ros
alias sdsb='source devel/setup.bash'
alias rtl='rostopic list'
alias tf='rosrun rqt_tf_tree rqt_tf_tree'

#usage: rosremote <ip address of remote master>
rosremote() {
    export ROS_MASTER_URI=http://$1:11311
    export ROS_IP=$1
}
