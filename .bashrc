#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


export PATH=$PATH:$HOME/.local/bin
export EDITOR=vim

# >>> automate ssh-agetn activation <<<
 eval $(ssh-agent -s)
 ssh-add ~/.ssh/github_arch

 # >>> oh-my-posh initialize <<<
 eval "$(oh-my-posh init bash --config ~/.config/.poshthemes/my_posh_theme.json)"
 # >>> oh-my-posh initialize <<<
alias dotfiles_linux='/usr/bin/git --git-dir=/home/kai/dotfiles_linux --work-tree=/home/kai'
