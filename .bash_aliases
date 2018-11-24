# Miscellaneous aliases
alias ..='cd ..'
alias x='exit'
alias d='rm -rf'
alias math='insect'
alias chsh='chmod 711 *.sh'

# Filesystem aliases
alias mkdir='mkdir -pv'
alias top='htop'
alias df='pydf'
alias cp='gcp -rv'

# PDF reader alias
alias pdf='evince'

# Git aliases
alias gi='git init'
alias gs='git status'
alias gd='git diff'
alias ga='git add -A'
alias gc='git commit -am'
alias gph='git push origin HEAD'
alias gpl='git pull'
alias gplm='git pull origin master'
alias gf='git fetch'
alias gcb='git checkout -b'
alias gch='git checkout'
alias gm='git merge'

# Yarn aliases
alias yin='yarn install --emoji'

# g++ aliases
alias comp='g++ -Werror -Wall'
alias g11='g++ -std=c++11 -Werror -Wall'

# cppcheck alias
alias check='cppcheck --enable=all ./'
alias chck='cppcheck --enable=all'

# mysql aliases
alias sqlstart='sudo service mysql start'
alias sqlstop='sudo service mysql stop'
alias sqlstatus='sudo service mysql status'

# vagrant aliases
alias vup='vagrant up'
alias vssh='vagrant ssh'

# Python aliases
alias py='python3'

# Tensorflow aliases
alias tf='source ~/tensorflow/bin/activate'

# always copy with xclip
alias xc='xclip -selection c'
alias xp='xclip -o'

# ripgrep
alias rg='rg --smart-case'

# always open octave-cli
alias oct='octave-cli'

# pandoc aliases
alias panda='pandoc'

# server alias
alias serve='python -m http.server'

# create-react-app
alias cra='npx create-react-app'

# create-react-native-app
alias crna='npx create-react-native-app'

# TEMPORARY ALIAS
alias docker='sudo docker'

