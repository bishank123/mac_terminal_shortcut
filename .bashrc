#Composer
alias cda="composer dump-autoload"
alias ci="composer install"
alias cu="composer update"

# Bower
alias bi="bower install"
alias bu="bower update"

# gulp
alias gi="gulp install"
alias gg="gulp && gulp watch"

# NPM
alias ni="npm install"

# Laravel
alias a="php artisan"
alias pa="php artisan"
alias pamc="php artisan make:controller"
alias pammd="php artisan make:model"
alias pamm="php artisan make:migration"

alias pam="php artisan migrate"
alias pamr="php artisan migrate:rollback"
alias pads="php artisan db:seed"

alias pades="php artisan vi-kon:db-exporter:seed"
alias pademi="php artisan vi-kon:db-exporter:migrate"
alias padem="php artisan vi-kon:db-exporter:models"

# Clear application cache
alias cc="php artisan clear-compiled;php artisan cache:clear; php artisan config:cache; php artisan config:clear; php artisan optimize;"

#pamt Http/Controllers/api/v1/ApprovalTypesChecklistControllerTest
alias pamt="php artisan make:test"
alias pu="phpunit"

# Generate micro-package generator
## run > composer global require jonathantorres/construct
alias gp="construct generate"

# Laravel Custom
alias dat="php artisan app:droptables"

# Git
alias gb="git branch"
alias ga="git add"
alias gaa="git add ."
alias gca="git commit -m"
alias gc="git commit -am"
alias gp="git push"
alias gs="git status"
alias gl="git log"
alias gck="git checkout"
alias gmn="git merge --no-ff"

#alias grh="git reset --hard"
#git reset --hard 39aef67da62d8ee502daaaa9e6ae317162082db4

#docker aliases
alias dock-start='docker-machine start default'
alias dock-init='eval "$(docker-machine env default)"'
alias dock-up='docker-compose up -d apache2 mysql redis'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
