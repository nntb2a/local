export HISTFILE=~/.zsh_history
export HISTSIZE=512000
export SAVEHIST=512000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt BRACECCL
setopt CORRECT
setopt AUTO_CD
setopt CLOBBER
setopt CORRECT
setopt ALWAYS_TO_END
setopt NOTIFY
setopt NOBEEP
setopt AUTOLIST
setopt AUTOCD
setopt PRINT_EIGHT_BIT
#eval `dircolors -b`
eval `dircolors $HOME/.zsh/colors`


autoload -U compinit
compinit
#zstyle ':completion::complete:*' use-cache 1

# Bindings
bindkey "\e[2~" overwrite-mode # Insert key
bindkey "\e[3~" delete-char # Del key

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

bindkey '^[Oc' vi-forward-word 
bindkey '^[Od' vi-backward-word
bindkey '[3~' delete-word # Alt+Del  -	Del
bindkey '3~' delete-word # Alt+Del  -	Del

# case-insensitive (uppercase from lowercase) completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# process completion
zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"
# zstyle
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '%U%F{yellow}%d%f%u'
# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _match _approximate _prefix
zstyle ':completion:*' format '*** %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' prompt 'correctionz'
zstyle ':completion:*' verbose false
zstyle ':compinstall*' filename '~/.zshrc'

autoload -U compinit
compinit
# End of lines added by compinstall

autoload -U promptinit
promptinit
if [ "$EUID" = "0" ] || [ "$USER" = "root" ] ; then
	prompt adam1 transparent red red
else
	prompt adam1 transparent green
fi

autoload colors && colors

#dot() {
#	if [[ $LBUFFER = *.. ]]; then
#	LBUFFER+=/..
#	else
#	LBUFFER+=.
#	fi
#}

#for file in $HOME/.zsh/rc/*.rc; do
#        source $file
#done


export EDITOR="vim"
export TERM="rxvt"

# for have colors
autoload -U colors
colors

# define your colors here (i hate white background)
host_color="green" 
path_color="blue"
date_color="white"

host="%{$fg[$host_color]%}%n@%m"
cpath="%B%{$fg[$path_color]%}%/%b"
end="%{$reset_color%}%% "

PS1="$host $cpath $end"
#autoload -U dot
#zle -N dot
#bindkey . dot
fortune

alias eq='alsamixer -D equal'
alias pp='netstat -nlp'
alias ping='grc ping'
alias ls='ls --color=auto --group-directories-first -h'
alias enca='enca -L ru -c -x UTF-8 -V'
alias grep='grep --colour=auto -i'
alias scprsync="rsync --partial --progress --rsh=ssh"
alias srm='bcwipe -mb -vf'
alias wget-site='wget -rEkpnpc'
alias cp='cp -uvi'
alias mv='mv -uvi'
alias rm='rm -v'
alias du='du -h'
alias df='pydf'
alias zombiescan="nmap -P0 -p- -sI"
alias nn='netstat -anp | less' 
alias nmapp='nmap -PNA -sS -sV -vv -O --reason'

alias -g ERR='2>/dev/null'
alias -g W='| wc -l'
alias -g G='| grep'
alias -g L='| less'
alias -g H='| head'

alias reboot="shutdown -r now"
alias rkhunter='rkhunter -c --sk --rwo'
# do a du -hs on each dir on current path
alias lsdir="for dir in *;do;if [ -d \$dir ];then;du -hsL \$dir;fi;done"
alias thr='ps -AlFH'

. /etc/environment


alias ppi='netstat -nlp --protocol=inet'
