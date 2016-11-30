#!/bin/bash

rm -rf ./my-emacs.d/*
cp ~/.emacs.d/init.el ./my-emacs.d/
cp -rf ~/.emacs.d/init-elisp  ./my-emacs.d/
