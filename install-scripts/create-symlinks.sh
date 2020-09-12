sudo rm -rf ~/.gitconfig
sudo rm -rf ~/.bashrc
sudo rm -rf ~/.emacs.d

ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.bashrc ~/.bashrc

mkdir ~/.emacs.d
ln -s ~/dotfiles/.emacs ~/.emacs.d/init.el