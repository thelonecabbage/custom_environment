#!/bin/sh

sudo resize_rootfs.sh

sudo apt-add-repository multiverse -y
sudo apt-add-repository universe -y 
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update -y

sudo bash <(curl -s https://raw.githubusercontent.com/longsleep/build-pine64-image/master/simpleimage/platform-scripts/pine64_update_uboot.sh)
sudo bash <(curl -s https://raw.githubusercontent.com/longsleep/build-pine64-image/master/simpleimage/platform-scripts/pine64_update_kernel.sh)
sudo bash <(curl -s https://raw.githubusercontent.com/longsleep/build-pine64-image/master/simpleimage/platform-scripts/pine64_fix_whatever.sh)

sudo apt-get install python-setuptools python-dev build-essential git-core -y
sudo easy_install pip
sudo pip install virtualenv
sudo pip install virtualenvwrapper
mkdir ~/virtualenvs

sudo apt-get remove vim-tiny -y
sudo apt-get install vim vim-common vim-nox vim-autopep8 vim-pathogen -y --allow-unauthenticated
cp ./my-env.sh ~/
cp ./vimrc ~/.vimrc
echo 'souce ~/my-env.sh' >> ~/.bashrc

git config --global user.email "thelonecabbage@gmail.com"
git config --global user.name "justin alexander"
