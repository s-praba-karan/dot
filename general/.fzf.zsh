# Setup fzf
# ---------
if [[ ! "$PATH" == */home/prabakaran/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/prabakaran/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/prabakaran/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/prabakaran/.fzf/shell/key-bindings.zsh"
