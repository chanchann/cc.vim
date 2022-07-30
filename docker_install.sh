#!/bin/sh

echo "----------------install curl----------------"
apt-get install curl

echo "----------------install nvim----------------"
apt-get install neovim

echo "----------------install ctags----------------"
apt-get install install ctags

echo  "----------------install coc.vim----------------"
curl -sL install-node.vercel.app/lts | bash
apt-get install ccls
apt-get install yarn

echo  "----------------install fzf---------------"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "----------------install Vim-Plug----------------"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
if [ ! -d ~/.config/nvim/ ]; then
    mkdir -p ~/.config/nvim/
fi

rm -f ~/.config/nvim/init.vim
cp init.vim ~/.config/nvim/init.vim

source ~/.bashrc