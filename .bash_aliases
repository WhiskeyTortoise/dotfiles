### ------------------------------------
### 		Environment
### ------------------------------------
export COMMAND_LINE_INSTALL="true"
export BASH_SILENCE_DEPRECATION_WARNING=1

# Colors
#export CLICOLOR=1
#export LSCOLORS=CxBxFxDxCxegedabagacad
force_color_prompt=yes

### -----------------------------------
### 		Alias
### ------------------------------------


## Generic  ##
alias lsa='ls -altr'
alias ls='lsd -l'
alias cd..='cd ../'
alias checkip='curl ipinfo.io/ip'
alias htb='ssh -p 2222 kali@127.0.0.1'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias updoc='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'
alias python='python3'

# OS specific
#source .aliases.$(echo $(uname -s) |awk '{print tolower($0)}')


# Programs
alias vim='nvim'

#Functions
ssh-auto-retry(){
	while true; do
		ssh "$@" && break
		sleep 10
	done
}
