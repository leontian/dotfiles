#!/bin/bash

DOTFILES=$HOME/.dotfiles
platform=`uname`

echo "creating symlinks"
linkables=$( ls -1 -d **/*.symlink )
for file in $linkables ; do
#    if [[ "${file##*/}" =~ "_.*_" ]]; then
#        if [[ "${file##*/}" =~ "_${platform}_" ]]; then
#            target="$HOME/.$( basename ${file##*/_${platform}_} ".symlink" )"
#        else
#            continue
#        fi
#    else 
    target="$HOME/.$( basename $file ".symlink" )"
    echo "creating symlink for $file"
    ln -sf $DOTFILES/$file $target
done
