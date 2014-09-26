echo " "
echo "--------------------"
echo "Ganis VIM's settings"
echo "--------------------"
echo " "
echo "Installing .vimrc in your home directory"
echo " "
echo "set runtimepath+=~/.vim/.vimrc" > ~/.vimrc
echo "source ~/.vim/.vimrc" >> ~/.vimrc
echo " "
echo "Installing plugins, these are clones from externel git"
echo "good: your plugins are updated"
echo "bad: a git may be down, look for alternative git"
echo " "
cd ~/.vim/bundle
sudo rm ~/.vim/bundle/* -r
git clone https://github.com/kien/ctrlp.vim
git clone https://github.com/singingwolfboy/flake8.git
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/jcrocholl/pep8
git clone https://github.com/vim-scripts/pydoc.vim
git clone https://github.com/vim-scripts/pythoncomplete
git clone https://github.com/ervandew/supertab
git clone https://github.com/tomtom/tlib_vim
git clone https://github.com/MarcWeber/vim-addon-mw-utils
git clone https://github.com/bling/vim-airline
git clone https://github.com/garbas/vim-snipmate
git clone https://github.com/honza/vim-snippets
echo " "
echo "update your vim"
echo "sudo apt-get install vim"
echo " "
sudo apt-get install vim
