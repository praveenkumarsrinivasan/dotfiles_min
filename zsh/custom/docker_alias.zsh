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
alias docsall='docker stop $(docker ps -a -q)'
alias docrmall='docker rm $(docker ps -a -q)'

# Remove none images
alias docrminone='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'

# Remove all images
alias docrmiall='docker image prune -a'

#remove images with pattern 
#docker images | grep pks | awk '{ print $3; }' | xargs docker rmi -f

# docker data science jupyterlab
alias docdslab='docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}":/home/jovyan/work jupyter/datascience-notebook:latest'

# docker pyspark jupyterlab
alias docdslab='docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}":/home/jovyan/work jupyter/all-spark-notebook:latest'
