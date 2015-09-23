#!/bin/bash

echo "Install Qt5"
if [ "$(uname)" == "Darwin" ]; then
brew install qt5
brew link --force qt5

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
echo "Linux detected"
sudo add-apt-repository --yes ppa:beineri/opt-qt541
sudo apt-get update -qq
sudo apt-get install -qq qt54base qt54xmlpatterns
#sudo apt-get install -qq libqt5webkit5-dev libsqlite3-dev
fi

echo "Done."
