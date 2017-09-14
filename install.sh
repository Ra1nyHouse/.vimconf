#!/bin/sh
this_path=$(cd `dirname $0`; pwd)
new_path=${this_path}'/vimconf.vim'

cd ~
if test -e .vimrc
then
  mv .vimrc .vimrc-backup
fi
ln -s $new_path .vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  
