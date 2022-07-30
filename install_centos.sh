#!/bin/bash

echo "----------------install curl----------------"
sudo yum install curl -y

echo "----------------install nvim----------------"
sudo yum install neovim -y

echo "----------------install ctags----------------"
sudo yum install ctags -y

echo  "----------------install coc.vim----------------"
sudo curl -sL install-node.vercel.app/lts | bash -y
sudo yum install ccls -y 
cd ~/.config/nvim/plugged/coc.nvim
sudo npm install

echo  "----------------install fzf---------------"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
sudo ~/.fzf/install -y

echo "----------------install Vim-Plug----------------"
sudo sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if [ ! -d ~/.config/nvim/ ]; then
    sudo mkdir -p ~/.config/nvim/
fi

sudo rm -f ~/.config/nvim/init.vim
sudo cp init.vim ~/.config/nvim/init.vim

source ~/.bashrc
