mkdir -p ~/.dotfiles/pks/

# clone dotfiles_min to ~/.dotfiles/pks/
cd ~/.dotfiles/pks/
git clone https://github.com/praveenkumarsrinivasan/dotfiles_min.git

# install zsh custom files
cd ~/.oh-my-zsh/custom/
ln -s ~/.dotfiles/pks/zsh/*.zsh

source ~/.zshrc

# copy 
cp ~/.dotfiles/pks/vim/.vimrc ~/.vimrc
