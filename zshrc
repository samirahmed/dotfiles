# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="arrow"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx heroku rvm rails3 brew gem  bundler todo)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin:$PATH

# enable autocomplete?
autoload -U compinit
compinit

##############
# LS Alias   #
##############
alias ls='ls -G' 	#I like color
alias ll='ls -l '	  #I like lists
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable


#################
# General Alias #
#################

alias claer='clear'			# autocorrect bad spelling
alias rm='rm -i' 			# precautionary
alias ports='port' 			# bad habit of mine
alias pandora='pianobar'	# i never remember this name
alias todo='todo.sh'      # todo
#############
# BoomMarks #
#############

export fu=~/dropbox/dev/fu
export typometrics=~/dropbox/dev/typometrics
export algorithms=~/dropbox/work/spring12/algorithms
export ai=~/dropbox/work/spring12/ai
export os=~/dropbox/work/spring12/os
export tmp=~/dropbox/tmp
export code=~/dropbox/code
export public=~/dropbox/public
export RA=~/dropbox/RA
export credport=~/dropbox/webcred/credport
export dev=~/dropbox/dev

 [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

####################
# Topical Sourcing #
####################
source ~/.datafart
