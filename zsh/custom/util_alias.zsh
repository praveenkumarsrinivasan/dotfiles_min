# Utils
# Find
alias t='find . -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"'
# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Copy files in subfolders to parent folder
alias sub2par='find . -maxdepth 2 -type f -exec mv {} .. \;'

alias p='pwd'
alias dh='dirs -v'
alias s='du -sch'
alias vi='vim'
alias ll='ls -al'
