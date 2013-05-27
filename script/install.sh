#!/bin/bash
############################
# install.sh
# Script to install jtimon dotfiles configuration after a fresh ubuntu install
############################

lists=~/Desktop/.dotfiles/lists
desktop=~/Desktop
dir=~/Desktop/.dotfiles           # dotfiles directory
private=~/Desktop/.private
olddir=~/dotfiles_old             # old dotfiles backup directory

#######

cd ~

echo -n "Removing default home empty folders..."
rm -rf ~/Documents ~/Downloads ~/Music ~/Pictures ~/Public ~/Templates ~/Videos
echo "done"

echo -n "Creating symlinks to the listed directories in the desktop..."
for file in $(cat $lists/desktop_dirs | tr '\n' ' '); do
    ln -s $desktop/.$file ~/$file
done
echo "done"

##########

echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

echo -n "Creating symlinks to private dotfiles in home directory:"
for f in $(ls -a $dir); do
    if [ ! -r "$HOME/$f" ] &&
        [ $f != "." ] && [ $f != ".." ] && 
        [ "$f" != ".git" ] && 
        [ $f != ".gitignore" ] &&
        [ "$f" != "script" ] && 
        [ "$f" != "lists" ] && 
        [ "$f" != "todo.org" ] && 
        [ $f != "README.md" ] ; then
        echo -n "Moving $f from ~ to $olddir..."
        mv ~/.$f $olddir
        echo -n "Creating symlink from $dir/$f to $f in home directory..."
        ln -s $dir/$f ~/.$f
        echo "Done"
    fi
done

echo -n "Creating symlinks to private dotfiles in home directory:"
for f in $(ls -a $private); do
    if [ ! -r "$HOME/$f" ] &&
        [ $f != "." ] && [ $f != ".." ] && 
        [ "$f" != "conkeror.js" ] && 
        [ "$f" != "emacs.el" ] ; then
        echo -n "Moving $f from ~ to $olddir..."
        mv ~/$f $olddir
        echo -n "Creating symlink from $private/$f to $f in home directory..."
        ln -s $private/$f ~/$f
        echo "Done"
    fi
done

# Bootstrap a fresh Ubuntu install based on my app repos and deb lists.

echo -n "Adding extra ppa-repositories ..."
for repo in $(cat $lists/ppa_repos | tr '\n' ' '); do
    echo -n "Adding repository $repo..."
    sudo apt-add-repository ppa:$repo
    echo "done"
done

echo -n "Updating package list ..."
sudo apt-get update
echo "done"

echo -n "Installing packages via apt-get ..."
sudo apt-get install -y $(cat $lists/debs | tr '\n' ' ')
echo "done"
