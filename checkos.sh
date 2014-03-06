#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
echo "Mac OS X detected"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
echo "Linux detected"
fi
