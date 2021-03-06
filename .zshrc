# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
bindkey -s '^[3' \#

mkcd () {
    mkdir -p "$*"
    cd "$*"
}

#ctrl-z suspends _and_ resumes
fancy-ctrl-z () {
    if [[ $#BUFFER -eq 0 ]]; then
        fg
        zle redisplay
    else
        zle push-input
    fi
}

zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
alias nunit='/Library/Frameworks/Mono.framework/Versions/Current/bin/nunit-console4'
alias nunit-console.exe='/Library/Frameworks/Mono.framework/Versions/Current/bin/nunit-console4'
alias warmup='mono /Library/Ruby/Gems/2.0.0/gems/warmup-0.6.6.0/bin/warmup.exe'
alias omni='cd ~/.vim/bundle/Omnisharp/server/OmniSharp'
alias atom='cd ~/.atom/packages/atom-sharper'
alias src='cd ~/src'
alias v='vim .'
alias e='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias updatedb='/usr/libexec/locate.updatedb'
# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:./node_modules/.bin:~/src/OpenIDEBak/ReleaseBinaries:$PATH
export EDITOR=/usr/local/bin/vim
export PYTHONSTARTUP=~/.pystartup

[ -s "/Users/jason/.kre/kvm/kvm.sh" ] && . "/Users/jason/.kre/kvm/kvm.sh" # this loads kvm
# source ~/.fzf.zsh

[ -s "/Users/jason/.dnx/dnvm/dnvm.sh" ] && . "/Users/jason/.dnx/dnvm/dnvm.sh" # Load dnvm
