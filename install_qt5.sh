#!/bin/bash

echo "Install Qt5"
if [ "$(uname)" == "Darwin" ]; then
brew install qt5

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
echo "Linux detected"
sudo add-apt-repository --yes ppa:ubuntu-sdk-team/ppa
sudo apt-get update -qq
sudo apt-get install -qq qt5-qmake qtbase5-dev qtdeclarative5-dev
#sudo apt-get install -qq libqt5webkit5-dev libsqlite3-dev
fi

echo "Done."
