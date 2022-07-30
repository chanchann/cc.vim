#!/bin/sh

echo "----------------install nvim----------------"
sudo apt-get install neovim

echo "----------------install Vim-Plug----------------"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir ~/.config/nvim/
nvim ~/.config/nvim/init.vim

echo "----------------install ctags----------------"
sudo apt-get install install ctags

echo  "----------------install coc.vim----------------"
curl -sL install-node.vercel.app/lts | bash
sudo apt-get install ccls
sudo apt-get install yarn

echo  "----------------install fzf---------------"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
