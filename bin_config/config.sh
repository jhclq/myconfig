#!/bin/bash

echo "It will cover the original configuration! [y/n]"
read ANS
case $ANS in
    y|Y|yes|YES)
	test -e ~/bin || mkdir ~/bin
	cp ./mybin/* ~/bin/
	;;
    *)
	exit 1			# not to do
esac
