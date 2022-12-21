#!/bin/bash
set -uox pipefail

# In case requirement programs are not installed yet
sudo apt install -y python2-dev
sudo apt install -y build-essential cmake python3-dev
sudo apt install -y mono-complete golang nodejs default-jdk npm
