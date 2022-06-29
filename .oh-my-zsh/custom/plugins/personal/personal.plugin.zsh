#------
#Aliases
#-------
function clonerepo(){
	git clone git@github.com:$1/$2.git
}

function setgiturl(){
	git remote set-url origin git@github.com:$1/$2.git
}
function sshutm() {
	ssh limtungt@cs.utm.utoronto.ca
}
function transf(){
	scp $1 limtungt@dh2010pc$2.utm.utoronto.ca:Desktop
}

function setupstream() {
	git push --set-upstream origin $1
}
function merge() {
	git fetch && git merge origin/$1
}

#Cow Say /usr/local/Cellar/cowsay/3.04/share/cows
alias ghci="stack ghci"
alias rebase="git pull --rebase"
alias rickroll="curl -s -L https://www.cs.toronto.edu/~angelazb/render.sh  | bash "
alias localipaddr="ipconfig getifaddr en0"
alias mongostart="brew services run mongodb-community"
alias mongostop="brew services stop mongodb-community"
alias sshcssc="ssh cssc@cssc.utm.utoronto.ca"
alias about="neofetch"
alias bind="horcrux bind"
alias split="horcrux split"
alias drma="docker rm -f `docker ps -aq`"
alias updatealias='cp ~/.oh-my-zsh/custom/plugins/personal/personal.plugin.zsh ~/Desktop/dotfiles/.oh-my-zsh/custom/plugins/personal/personal.plugin.zsh'
alias deldsstore='find . -name '.DS_Store' -type f -delete'
alias dls='docker ps -a'
alias clone209repo='git clone https://mcsmark.utm.utoronto.ca/git/csc209h_20201/repo/bare/limtungt "209_repo"'
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
alias clone207grouprepo="git clone https://limtungt@mcsscm.utm.utoronto.ca:9999/git/207/19f/repo_a2_RecursiveDefinedYo.git"
alias clone207classrepo="git clone ssh://limtungt@cslinux.utm.utoronto.ca/student/cslec/207/19f/207_L0102.git"
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
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
