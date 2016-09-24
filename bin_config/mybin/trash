#!/bin/bash

test -e ~/TmpTrash || mkdir ~/TmpTrash
for ((i=1;i<="$#";i=i+1))
do
    mv $@ ~/TmpTrash
    shift
done
