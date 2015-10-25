#!/usr/bin/env bash

# Copy
! [ -d ~/.dotfile_backup ] && mkdir ~/.dotfile_backup
# For each of the files in the current directory that start with a '.'
for i in .*; do
  if ! [ "$i" == "." ] && ! [ "$i" == ".." ] && ! [ "$i" == ".git" ] && ! [ "$i" == ".gitmodules" ]; then
    # Backup & Remove: - If it `exists` in the user's home (~) directory
    if [ -e ~/$i ]; then
      if ! ( cp -r ~/$i ~/.dotfile_backup/$i ) || ! ( rm -fr ~/$i || unlink ~/$i ); then
        echo "Failed on $i" > /dev/stderr
        exit 1
      fi
    fi
    # Link user's home (~) directory to this
    if ! (ln -sfv $(pwd)/$i ~/$i); then
     echo "Failed on $i" > /dev/stderr
     exit 1
    fi
  fi
done

#
exit 0

