#!/bin/bash
set -uox pipefail

# In case requirement programs are not installed yet
if ! type "python3" > /dev/null; then
    while true; do
        read -p "Do you wish to install python3? [Y/n]
" yn
        case $yn in
            Y ) sudo apt-get install python3; break;;
            * ) echo "Continuing without installing python3"; break;;
        esac
    done
fi
if ! type "cmake" > /dev/null; then
    while true; do
        read -p "Do you wish to install cmake? [Y/n]
" yn
        case $yn in
            Y ) sudo apt-get install cmake; break;;
            * ) echo "Continuing without installing cmake"; break;;
        esac
    done
fi
