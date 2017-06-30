#!/bin/bash

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

cp -v vimrc ~/.vimrc
cp -v tmux.conf ~/.tmux.conf

mkdir ~/.vim/skeleton
cp -vr skeleton/* ~/.vim/skeleton/

sed -i 's/\/home\/metalx1000/$HOME/g' ~/.vimrc;grep "^iab" ~/.vimrc|awk '{print $2}' > ~/.vim/skeleton/dic.lst
