#!/bin/bash

HUGO_VERSION="0.131.0"
HUGO_PATH=/usr/local/hugo/bin/
if command -v hugo &> /dev/null; then
    if hugo version | grep -q extended; then
        echo "Hugo extended version already installed"
        exit 1
    fi
fi

echo "Installing extended version"
sudo rm "${HUGO_PATH}/hugo"
wget https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz
tar -zxvf hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz
sudo mv hugo ${HUGO_PATH}
rm hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz
rm LICENCE