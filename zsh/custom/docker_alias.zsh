# DOCKER
alias doci='docker images'
alias docrmi='docker rmi'
alias docps='docker ps -a'
alias docrm='docker rm'
alias docs='docker stop'
alias dcup='docker-compose up -d'
alias dcdn='docker-compose down'
alias dcps='docker-compose ps'
alias dclogs='docker-compose logs'

# Stop and remove all comtainers
#docker stop $(docker ps -a -q)
#docker rm $(docker ps -a -q)

# Remove all images
#docker image prune -a