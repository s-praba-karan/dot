# Basic stff
source ~/.config/zsh/.zprofile #.zshenv stuff
export TERM="xterm-256color"

HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.config/zsh/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
plugins=(zsh-nvm git npm)

setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory

export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export MANPAGER='nvim +Man!'

# Prompt Settings
PROMPT='%F{yellow}%1~%f %F{green}∯%f  '

#PATH Settings
PATH=$PATH:$HOME/.scripts #making my scripts run without typing the whole path
PATH=$PATH:$HOME/.rbenv/versions/2.7.3/bin/
PATH=$PATH:$HOME/.emacs.d/bin/
PATH=$PATH:$HOME/.local/bin/
LYNX_CFG=$HOME/.config/lynx/lynx.cfg
LYNX_LSS=$HOME/.config/lynx/lynx.lss

# Basic zsh settings
bindkey -v # vi-mode
autoload -Uz compinit && compinit #need the next two lines for case insensitive tab completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

## Git Settings
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git

###########
# Aliases #
###########

## App launchers
alias pvpn='protonvpn-cli'
alias v='nvim -i NONE'
alias f='ranger'
alias spotify='~/.local/share/applications/spotifyy.desktop'

# Pacman and Yay
alias pac='sudo pacman'
alias pacs='sudo pacman -Sy'
alias pacr='sudo pacman -R'
alias up='sudo pacman -Syyyu; yay -Syyyu'
alias ys='yay -Sy'
alias yr='yay -R'

# ytfzf and ani-cli
alias ytt='ytfzf -t' 
alias yta='ytfzf -t -m'
alias yth='ytfzf -H'
alias ytc='ytfzf -x'
alias ln='lightnovel-cli'

# tmux
alias 'tmux'='tmux -u'
alias 't'='tmux -u'
alias 'tn'='t new -s'
alias 'tl'='tmux ls'
alias 'ta'='tmux a -t'
alias 'tk'='tmux kill-ses -t'
alias 'wc'='feh --randomize --bg-scale ~/.wallpapers/*'

# git
alias 'gc'='git clone'

# rsync
alias 'rsw'='rsync -vrP --delete-after ~/Desktop/git-repos/website/_site/ root@s-prabakaran.com:/var/www/prabakaran'
alias 'rsg'='rsync -vrP --delete-after ~/Desktop/git-repos/gopher-site/gophermap root@s-prabakaran.com:/var/gopher/'


alias 'sudo'='sudo '
alias 'tsm'='transmission-remote'
alias 'kill'='killall -q'
alias 'cls'='clear'
alias 'ls'='lsd'
alias 'lsa'='lsd -al'
alias 'tree'='lsd --tree'
alias '?'='duck'
alias '??'='google'
alias 'lf'='~/.scripts/lf-ueberzug'
alias 'todo'='v ~/.config/conky/todo.md'
alias 'nb'='newsboat'
alias 'music'='ncmpcpp'
alias 'z'='zathura'
alias 'open'='xdg-open'

# Plugins
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/plugins/zsh-auto-notify/auto-notify.plugin.zsh
source ~/.config/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh

# history substring search options
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# auto notify options
AUTO_NOTIFY_IGNORE+=("lf-ueberzug" "ln" "nb" "todo" "newsboat" "music" "z" "lf" "tmux" "t"  "ytc" "ytt" "yth" "yta" "an" "anh" "anc" "zathura")

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# source /usr/share/nvm/init-nvm.sh
