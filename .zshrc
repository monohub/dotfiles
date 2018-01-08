# 
# This file is based on the configuration written by
# Bruno Bonfils, <asyd@debian-fr.org> 
# Written since summer 2001

# colors
eval `dircolors /etc/DIR_COLORS`

autoload -U zutil
autoload -U compinit
autoload -U complist

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
bindkey '^K' kill-whole-line
bindkey "\e[H" beginning-of-line        # Home (xorg)
bindkey "\e[1~" beginning-of-line       # Home (console)
bindkey "\e[4~" end-of-line             # End (console)
bindkey "\e[F" end-of-line              # End (xorg)
bindkey "\e[2~" overwrite-mode          # Ins
bindkey "\e[3~" delete-char             # Delete
bindkey '\eOH' beginning-of-line
bindkey '\eOF' end-of-line

# Activation
compinit

alias mydf="df -hPT | column -t"
alias ll="ls -lah"
alias rm="rm -i"
alias cp="cp -i"
alias ls="ls --color=auto"
alias l="ls -ail"
alias cl="clear"

alias reboot="shutdown -r now"

#alias jdown='java -jar /home/mono/jd2/JDownloader.jar'
#alias sshpi='ssh mono@192.168.0.5 -p 22033'
alias dotfiles="git --git-dir=/home/mono/.dotfiles/ --work-tree=/home/mono/"
alias hell="printf '\033[?5h'"
alias dunkel="printf '\033[?5l'"
alias neofetch="/usr/bin/neofetch --ascii_distro gentoo"
alias sshfs-mount='sshfs mono@192.168.0.5:/home/mono/DLNA /home/mono/sshfs_mount'
alias sshfs-unmount='fusermount -u /home/mono/sshfs_mount'
alias irssigentoo='irssi -c chat.freenode.net -n monom -w hyper23'
alias kalender='gcal -H "\e[34m:\e[0m:\e[32m:\e[0m" -q DE_BY -s mond -i --christian-holidays .'
#alias telegram='/home/mono/tg/bin/telegram-cli -k /home/mono/tg/tg-server.pub'
alias emerge-update='emerge -avuND --with-bdeps=y @world'
alias emerge-depclean='emerge --depclean --with-bdeps=y'
alias sshpi='ssh mono@192.168.0.5'
#alias env-update="env-update && source /etc/zsh/zprofile"
alias rainbowstream="source venv/bin/activate && rainbowstream -iot --proxy-host localhost"
alias wetter="curl wttr.in/~Wolfratshausen"
# do a du -hs on each dir on current path
alias lsdir="for dir in *;do;if [ -d \$dir ];then;du -hsL \$dir;fi;done"
alias ssh-quemu-GentooVM="ssh -p 10022 mono@localhost"
alias nv="nvim"
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

#environement variables
export HISTSIZE=512

setopt CORRECT
setopt ALWAYS_TO_END
setopt NOTIFY
setopt NOBEEP
setopt AUTOLIST
setopt AUTOCD
setopt PRINT_EIGHT_BIT

NPM_PACKAGES="${HOME}/.npm"

PATH="$NPM_PACKAGES/bin:$PATH"
PATH="{$HOME}/.npm/lib/node_modules/@angular/cli/bin:$PATH"
PATH="${PATH}:${HOME}/.local/bin/"
export PATH="$PATH:/usr/lib64/node_modules/yarn/bin/"
export PATH="$PATH:`yarn global bin`"
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
# unset MANPATH # delete if you already modified MANPATH elsewhere in your config
# export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# for have colors
autoload -U colors
colors

# define your colors here (i hate white background)
host_color="white" 
path_color="magenta"
date_color="black"

date="%B%{$fg[$date_color]%}%T%b"
host="%{$fg[$host_color]%}%n"
cpath="%B%{$fg[$path_color]%}%~%b"
end="%{$reset_color%}%# "

PS1="$date $host $cpath $end"
