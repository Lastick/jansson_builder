#!/bin/sh

git clone https://github.com/akheron/jansson.git -b master
cd jansson/
git reset --hard v2.13.1

INSTALL_DIR=$HOME/build/jansson

mkdir -p $INSTALL_DIR

autoreconf -i
./configure --prefix=$INSTALL_DIR
make
make install

cd ../
rm -rf jansson/
