#!/bin/bash

echo "It will cover the original configuration! [y/n]"
read ANS
case $ANS in
    y|Y|yes|YES)
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	cp ./myvimrc ~/.vimrc
	;;
    *)
	exit 1			# not to do
esac
