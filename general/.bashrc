[[ $- != *i* ]] && return
#export XDG_CURRENT_DESKTOP=KDE
alias ls='ls --color=auto'
PS1='\W ∯ '

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
PATH=$PATH:$HOME/.config/polybar/scripts:$HOME/.scripts

export DOTFILES="$HOME/Documents/git-lab/dotfiles"
export BROWSER="firefox"
export WALLPAPERS="$HOME/Pictures/Wallpapers/Wallpapers"

if [ -d ~/.bash_completion.d ]; then
  for file in ~/.bash_completion.d/*; do
    . $file
  done
fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
PATH=$PATH:$HOME/.config/polybar/scripts:$HOME/.scripts

export DOTFILES="$HOME/Documents/git-lab/dotfiles"
export BROWSER="firefox"
export WALLPAPERS="$HOME/Pictures/Wallpapers/Wallpapers"

if [ -d ~/.bash_completion.d ]; then
  for file in ~/.bash_completion.d/*; do
    . $file
  done
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


alias '?'=.local/scripts/duck
alias '??'=.local/scripts/google
alias 'cls'=clear
alias 'vim'='nvim'
