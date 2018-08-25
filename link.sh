#!/bin/bash
set -euox pipefail

BACKUP_DIR=/tmp/dotconfig_backup/vimconfig
DIR="$(cd "$(dirname "$0")"; pwd -P)"

rm -rf $BACKUP_DIR
mkdir -p $BACKUP_DIR
[ -e ~/.vim ]   && mv ~/.vim   $BACKUP_DIR
[ -e ~/.vimrc ] && mv ~/.vimrc $BACKUP_DIR
ln -sf $DIR/vim   ~/.vim
ln -sf $DIR/vimrc ~/.vimrc

while true; do
    read -p "Do you wish to also install YouCompleteMe vim plugin?
Note that this requires python3, vim7.4.1+, build-essentials, and cmake3.
Also note that this will take ~10 minutes.
Specifically state 'Yes' if so
" yn
    case $yn in
        Yes ) $DIR/install_YCM.sh; break;;
        * ) echo "Continuing without installing YouCompleteMe"; break;;
    esac
done
