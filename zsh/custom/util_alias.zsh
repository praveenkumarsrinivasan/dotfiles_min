# Utils
# Find
alias t='find . -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"'
# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

alias p='pwd'
alias dh='dirs -v'
alias s='du -sch'
alias vi='vim'
alias ll='ls -al'