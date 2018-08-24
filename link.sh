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
