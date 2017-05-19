#!/bin/bash

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

cp -v vimrc ~/.vimrc
cp -v tmux.conf ~/.tmux.conf

mkdir ~/.vim/skeleton
cp -vr skeleton/* ~/.vim/skeleton/
grep "^iab" ~/.vimrc|awk '{print $2}' > ~/.vim/skeleton/dic.lst
