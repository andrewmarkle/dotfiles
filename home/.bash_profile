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

#Bundler alias
alias b="bundle"
alias be="bundle exec"

#Rails alias
alias rk="rake"
alias rstat='rake db:migrate:status'
alias rback='rake db:rollback'
alias migrate="rake db:migrate db:rollback && rake db:migrate db:test:prepare"
alias m="migrate"
alias rs='rails s'
alias rc='rails c'
alias rr='rake routes'
alias g='bundle exec guard'
alias guard="bundle exec guard"
alias glr="guard -P livereload"
alias ss='spring stop'
alias rspec="bundle exec rspec"
alias s="bundle exec rspec"
alias sidekiq="bundle exec sidekiq"
alias deploy="git push heroku master && heroku run rake db:migrate && heroku restart"

#Jekyll alias
alias jk="jekyll"

#Fastgem search (searches ruby gems)
alias rg="fastgem search"
