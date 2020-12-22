#------
#Aliases
#-------
function backupSys() {
	cp -r ~/GoLandProjects ~/Desktop/Backups
	echo "Copied GoLandProjects"
	cp -r ~/PycharmProjects ~/Desktop/Backups
	echo "Copied PycharmProjects"
	cp -r ~/Desktop/Projects ~/Desktop/Backups
	echo "Copied PycharmProjects"
	cp -r ~/Documents/Documents/Jobs ~/Desktop/Backups
	echo "Copied Jobs"
	cp -r ~/Documents/Documents/University ~/Desktop/Backups
	echo "Copied University"
	cp -r ~/Documents/Documents/IDE\ Settings ~/Desktop/Backups
	echo "Copied IDE Settings"
	cp -r ~/Documents/Documents/CompSci ~/Desktop/Backups
	echo "Copied CompSci"
}
function ipus(){
	while true
		do
		clear
		ls -lhrt ~/Library/iTunes/iPhone\ Software\ Updates
		sleep 2
	done
}
function dockerroot(){
	docker run -it --rm --privileged --pid=host justincormack/nsenter1
}
function clonerepo(){
	git clone git@github.com:$1/$2.git
}
function setgiturl(){
	git remote set-url origin git@github.com:$1/$2.git
}
function sshutm() {
	ssh limtungt@dh2026pc$1.utm.utoronto.ca
}
function transf(){
	scp $1 limtungt@dh2010pc$2.utm.utoronto.ca:Desktop
}
function d(){
	docker $1 $2
}
alias about="neofetch"
alias drma="docker rm -f `docker ps -aq`"
alias updatealias='cp ~/.oh-my-zsh/custom/plugins/personal/personal.plugin.zsh ~/Desktop/dotfiles/.oh-my-zsh/custom/plugins/personal/personal.plugin.zsh'
alias deldsstore='find . -name '.DS_Store' -type f -delete'
alias dls='docker ps -a'
alias clone209repo='git clone https://mcsmark.utm.utoronto.ca/git/csc209h_20201/repo/bare/limtungt "209_repo"'
alias clonemaputm='git clone https://github.com/SantiagoOrdonez/MapUTM.git'
alias compiled='gcc -Wall -d -o $1'
alias compilec='gcc -Wall -c'
alias new='touch'
alias compile='gcc -Wall -o $1'
alias swap='cd -'
alias speed='speedtest'
alias lsx='ls -F'
alias lsh="ls -lah"
alias gitseturl="git remote set-url origin"
alias run="python manage.py runserver"
alias p3="python3"
alias cls="clear"
alias end="exit"
alias r="source ~/.zshrc"
alias p="ping"
alias editcolor="vim /usr/local/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/highlighters/main/main-highlighter.zsh"
alias edit="vim ~/.zshrc"
alias h="history"
alias runenv="source bin/activate"
alias lsdisk="diskutil list"
alias wifipass="wifi-password"
alias kill="fkill"
alias back="cd .."
alias runwebserv="python -m SimpleHTTPServer"
alias gitlist="git ls-tree -r master --name-only"
alias clonegrouprepo="git clone https://limtungt@mcsscm.utm.utoronto.ca:9999/git/207/19f/repo_a2_RecursiveDefinedYo.git"
alias cloneclassrepo="git clone ssh://limtungt@cslinux.utm.utoronto.ca/student/cslec/207/19f/207_L0102.git"
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/usr/local/Cellar/Python@3.8/3.8.3/bin/:${PATH}"
#PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
alias editalias="vim ~/.oh-my-zsh/custom/plugins/personal/personal.plugin.zsh"
export PATH="~/mongodb-macos-x86_64-enterprise-4.2.1/bin:$PATH"
export DEFAULT_USER="Chris"
[[ -s "/Users/chris/.gvm/scripts/gvm" ]] && source "/Users/chris/.gvm/scripts/gvm"
export PATH="/usr/local/opt/ruby/bin:$PATH"
cowlist=( $(cowsay -l | sed "1 d") );
thechosencow=${cowlist[$(($RANDOM % ${#cowlist[*]}))]}
artii "Welcome" | lolcat
fortune | cowsay -f "$thechosencow" | lolcat
