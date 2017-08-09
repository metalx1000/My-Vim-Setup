#!/bin/bash

sed -i 's/\/home\/metalx1000/$HOME/g' ~/.vimrc;grep "^iab" ~/.vimrc|awk '{print $2}' > ~/.vim/skeleton/dic.lst

cp -v ~/.vimrc vimrc
cp -v ~/.tmux.conf tmux.conf

cp -rv ~/.vim/skeleton/* skeleton/

