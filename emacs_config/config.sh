#!/bin/bash

echo "It will cover the original configuration! [y/n]"
read ANS
case $ANS in
    y|Y|yes|YES)
	cp -rf ./my-emacs.d/* ~/.emacs.d/
	;;
    *)
	exit 1			# not to do
esac
