###
#
# Alias
#
###

## Fast jump up directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'
alias ..........='cd ../../../../../../../../..'

# d = directory jump
[ -d /d ] && alias d="cd /d/; cd "

# e => edit
alias e='emacs -nw'
# bash:
#   # e = edit with emacs || vi.
#   hash emacs 2>&- && alias e='emacs -nw' || alias e='vi'

# ee => emacsclient or email
alias ee='emacsclient -c -t -a emacs -nw'

# f => find in files
alias f='ack-grep'

# g => git
alias g='git'

# l => list files
alias l='ls -1AF'

# m => most (or more)
alias m='most'
# bash:
#   # m = most || more
#   hash most 2>&- && alias m='most' || alias m='more'

# rs = rsync with settings for typical mirroring 
alias rs='rsync --archive --compress --progress --update --verbose'

# rsp => rsync with partial and partial-dir for fast resume of broken transfers (requires directory write permission)
alias rsp='rsync --archive --compress --progress --update --verbose --partial --partial-dir=.rsync-partial-dir'

# shell = print the current shell, e.g. bash, csh, zsh
alias shell='ps -p $$ -o comm='


### Applications

# apache = /etc/init.d/apaache2 || /etc/initd.httpd
[ -e /etc/init.d/apache2 ] && alias apache='sudo /etc/init.d/apache2 '
[ -e /etc/init.d/httpd ] && alias apache='sudo /etc/init.d/httpd '

# firefox
[ -e /opt/firefox/firefox ] && alias firefox='/opt/firefox/firefox'

# rubymine
[ -e /opt/rubymine/bin/rubymine.sh ] && alias rubymine='/opt/rubymine/bin/rubymine.sh'


### Bundle

# bi => bundle install with best isolation options
alias bi='bundle install --binstubs --path vendor/bundle'
alias bi-dev='RAILS_ENV=development bundle install --binstubs --path vendor/bundle --without ""'
alias bi-test='RAILS_ENV=test bundle install --binstubs --path vendor/bundle --without ""'
alias bi-pro='RAILS_ENV=production bundle install --binstubs --path vendor/bundle --without development test guard jasmine quality'

# bx  => bundle exec
alias bx='bundle exec'
alias bx-dev='RAILS_ENV=development bundle exec'
alias bx-test='RAILS_ENV=test bundle exec'
alias bx-pro='RAILS_ENV=production bundle exec'


### Ruby

# Ruby On Rails Restart - Phusion Passenger in the app's top directory
alias rrr='touch tmp/restart.txt'


### Perl

alias pie='perl -p -i -e'
alias pie-all='xargs perl -p -i -e'