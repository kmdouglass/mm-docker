#!/usr/bin/env bash

set +o errexit

cd /micro-manager/micro-manager
./autogen.sh
./configure \
    --prefix="/micro-manager/build" \
    --with-boost-libdir="/usr/lib/x86_64-linux-gnu" \
    --with-boost="/usr/include/boost" \
    --disable-java-app \
    --disable-install-dependency-jars \
    --with-java="no"
make -j "${NUM_CORES}"
make install

cd MMCore
make -j "${NUM_CORES}"
mkdir -p /micro-manager/build/lib/micro-manager
cp .libs/libMMCore.a /micro-manager/build/lib/micro-manager
