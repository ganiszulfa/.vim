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
echo "update your vim"
echo "sudo apt-get install vim"
echo " "
sudo apt-get install vim
echo " "
echo "Installation is done."
echo "-------------------------"
echo " "

echo "Changing terminal color, to do so:"
# changing command prompt color terminal
echo "PS1='\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '" >> ~/.bashrc
echo "alias ls=\"ls --color=auto\""  >> ~/.bashrc
# better dir display in ls\
 echo "S_COLORS=\"di=31;1:ln=36;1:ex=31;1:*~=31;1:*.html=31;1:*.shtml=37;1\""  >> ~/.bashrc
source ~/.bashrc


echo " "
echo "100%  done. Probably next is installing and configuring tmux."
echo "-------------------------"
