#!/bin/bash
set -uox pipefail

DIR="$(cd "$(dirname "$0")"; pwd -P)"

$(cd $DIR/vim/bundle/ && git clone --recurse-submodules https://github.com/Valloric/YouCompleteMe.git)

$DIR/vim/bundle/YouCompleteMe/install.py
