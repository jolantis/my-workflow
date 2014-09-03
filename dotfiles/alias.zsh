# -----------------------------------------------------------------------------
#	Development
# -----------------------------------------------------------------------------

alias myalias="mvim ~/.oh-my-zsh/custom/alias.zsh"
alias myfuncs="mvim ~/.oh-my-zsh/custom/functions.zsh"

alias gr="sudo grunt"
alias gl="gulp"

# Git
alias g="git"

# Apache
alias apstop="sudo apachectl stop"
alias apstart="sudo apachectl start"
alias aprestart="sudo apachectl restart"

# -----------------------------------------------------------------------------
#	Rails Commands
# -----------------------------------------------------------------------------

alias rs="rails s"
alias rc="rails c"
alias rg="rails generate"
alias rgmg="rails generate migration"
alias rgm="rails generate model"
alias rgc="rails generate controller"
alias rgs="rails generate scaffold"
alias rks="rake db:drop; rake db:create; rake db:migrate"
alias rdrop="rake db:drop"
alias rcrea="rake db:create"
alias rmigr="rake db:migrate"
alias rseed="rake db:seed"

# -----------------------------------------------------------------------------
# Max OSX
# -----------------------------------------------------------------------------

# Hide/Show desktop icons
alias hidedesktopicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktopicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Hide/Show hidden files in Finder
alias hidehiddenfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias showhiddenfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"

# -----------------------------------------------------------------------------
#	Package Manager
# -----------------------------------------------------------------------------

# RVM
alias rubies="rvm list rubies"
alias gemsets="rvm gemset list"
alias rvmu19="rvm use 1.9.3"
alias rvmu20="rvm use 2.0.0"
alias rvmd19="rvm --default use 1.9.3"
alias rvmd20="rvm --default use 2.0.0"