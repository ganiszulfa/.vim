echo " "
echo "--------------------"
echo "Ganis VIM's settings"
echo "--------------------"
echo " "
echo "Installing .vimrc in your home directory..."
echo "set runtimepath+=~/.vim/.vimrc" > ~/.vimrc
echo "source ~/.vim/.vimrc" >> ~/.vimrc
echo "done."
echo " "
echo "update or install vim"
echo "sudo apt-get install -y vim"
echo " "
sudo apt-get install -y vim
echo " "
echo "Installation is done."
echo "-------------------------"
echo " "

echo "Changing terminal color..."
# changing command prompt color terminal
echo "PS1='\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '" >> ~/.bashrc
# better dir display in ls
echo "alias ls=\"ls --color=auto\""  >> ~/.bashrc
source ~/.bashrc

echo " "
echo "VIM is finished. Next is tmux..."
echo " "
git clone https://github.com/ganiszulfa/.tmux.git ~/.tmux
echo " "
sh ~/.tmux/init.sh
echo "Do this if u can't install tmux 1.9, but it takes a long time..."
echo "curl -fsSL https://gist.githubusercontent.com/ganiszulfa/d6681695077e22a9fbf9/raw/9e565de715216ddc2fcfef1dc69763632cf3c262/install.sh | sudo bash -e"
echo " "
echo "-------------------------"
