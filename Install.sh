#/bin/bash

# Install vim8
#sudo apt-get -y install python-software-properties
#sudo apt-get -y install software-properties-common
#sudo add-apt-repository ppa:jonathonf/vim
#sudo apt-get update
#sudo apt-get -y install vim

# 创建链接
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/vim ~/.vim

# Install Vundle
cd vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git vim/bundle/Vundle.vim

# Install nerdtree
git clone https://github.com/scrooloose/nerdtree.git vim/bundle/nerdtree

# Install indentLine
git clone https://github.com/Yggdroot/indentLine.git vim/bundle/indentLine

# Install powerline
sudo apt-get -y install powerline

# Install airline
git clone https://github.com/vim-airline/vim-airline.git vim/bundle/vim-airline

# Install ctags
sudo apt-get -y install ctags

# Install tagbar
git clone https://github.com/majutsushi/tagbar.git vim/bundle/tagbar

# Install vim-commentary
git clone git://github.com/tpope/vim-commentary.git vim/bundle/vim-commentary

# Install rainbow
git clone git://github.com/luochen1990/rainbow.git vim/bundle/rainbow
