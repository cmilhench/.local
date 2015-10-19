#!/usr/bin/env bash

NAME=dotfiles
REPO=https://github.com/cmilhench/$NAME.git

git clone -q $REPO > /dev/null
cd $NAME 
./bootstrap.sh
cd ..

echo
echo "Thanks for installing $NAME from $REPO"
echo
