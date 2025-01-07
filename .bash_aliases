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

alias lsa='ls -altr'
alias cd..='cd ../'
alias updoc='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'

## Generic  ##
alias checkip='curl ipinfo.io/ip'
alias htb='ssh -p 2222 kali@127.0.0.1'

alias updoc='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# OS specific
#source .aliases.$(echo $(uname -s) |awk '{print tolower($0)}')

alias ls='lsd -l'


# Programs
alias vim='nvim'
