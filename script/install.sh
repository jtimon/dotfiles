#!/bin/bash
############################
# install.sh
# Script to install a list of packages with apt-get
############################

lists=~/Desktop/.dotfiles/lists

# Bootstrap a fresh Ubuntu install based on my app repos and deb lists.

# echo -n "Adding extra ppa-repositories ..."
# for repo in $(cat $lists/ppa_repos | tr '\n' ' '); do
#     echo -n "Adding repository $repo..."
#     sudo apt-add-repository ppa:$repo
#     echo "done"
# done
# 
# echo -n "Updating package list ..."
# sudo apt-get update
# echo "done"

echo -n "Installing packages via apt-get ..."
sudo apt-get install -y $(cat $lists/debs-debian | tr '\n' ' ')
echo "done"
