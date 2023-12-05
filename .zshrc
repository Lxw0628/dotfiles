# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
source ~/.config/omz/omz.zsh

# theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# export EDITOR='lvim'
# alias vim='lvim'
export EDITOR='nvim'
alias vim='nvim'

alias n='neofetch'

# git alias
alias gst='git status'
alias gaa='git add'
alias cgit='cat ~/token.txt| xclip -sel clipboard;echo "github密钥复制成功~"'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias ra='ranger'
alias cat='bat'

# 输入todo打开备忘录
alias todo="
cd ~/Documents/TODO/;
if [ -f "~/Documents/TODO/$(date '+%Y%m').md" ]; then
    vim ~/Documents/TODO/$(date '+%Y%m').md
else
    touch ~/Documents/TODO/$(date '+%Y%m').md
    vim ~/Documents/TODO/$(date '+%Y%m').md
fi
"

# 输入temp打开临时记录
alias temp="
cd ~/Documents/Temp/;
if [ -f "~/Documents/Temp/temp.md" ]; then
    echo "" > ~/Documents/Temp/temp.md
    vim ~/Documents/Temp/temp.md
else
    touch ~/Documents/Temp/temp.md
    vim ~/Documents/Temp/temp.md
fi
"

alias ..='cd ..'

function cd() {
    emulate -LR zsh
    builtin cd $@ &&
    ls
}

export PATH=/home/lxw/.local/bin:/home/lxw/.node_modules/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
