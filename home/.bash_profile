if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#Autojump (https://github.com/joelthelion/autojump) setup
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

#Postgres.app setup
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export PATH=/usr/local/bin:/Users/amarkle/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Postgres.app/Contents/Versions/9.4/bin

#Terminal
#these make the terminal have nice colours that I like!
#theme is peppermint from: https://noahfrederick.com/log/lion-terminal-theme-peppermint/
#font is SourceCodePro light
export PS1="\n\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\n\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#Sublime
alias subl='sublime'
export BUNDLER_EDITOR=subl
export PATH=$PATH:~/bin

#Unix alias
alias ls='ls -GFh'
alias la='ls -la'

#Rails alias
alias rk="rake"
alias rkst='rake db:migrate:status'
alias migrate="rake db:migrate db:rollback && rake db:migrate db:test:prepare"
alias m="migrate"
alias rs='rails s'
alias rc='rails c'
alias g='be guard'
alias guard="be guard"
alias glr="guard -P livereload"
alias ss='spring stop'
alias s="rspec"
alias sidekiq="bundle exec sidekiq"
alias deploy="git push heroku master && heroku run rake db:migrate && heroku restart"

#Bundler alias
alias b="bundle"
alias be="bundle exec"

#Jekyll alias
alias jk="jekyll"

#Fastgem search (searches ruby gems)
alias rg="fastgem search"
