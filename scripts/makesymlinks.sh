#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
# files="bashrc vimrc vim zshrc oh-my-zsh private scrotwm.conf Xresources"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for f in $(ls -a $dir); do
    if [ ! -r "$HOME/$f" ] &&
        [ $f != "." ] && [ $f != ".." ] && 
        [ "$f" != ".git" ] && [ $f != ".gitignore" ] &&
        [ "$f" != "bin" ] && 
        [ $f != "README.md" ] ; then
        echo "Moving $f from ~ to $olddir"
        mv ~/.$f $olddir
        echo "Creating symlink to $f in home directory."
        ln -s $dir/$f ~/.$f
    fi
done

