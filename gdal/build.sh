#!/bin/bash

UNAME=$(uname -s)
if [ ${UNAME} = 'Darwin' ]; then
    export CFLAGS="-mmacosx-version-min=`xcrun --sdk macosx --show-sdk-version`"
    export CXXFLAGS="$CFLAGS"
    export LDFLAGS="$CFLAGS"
fi

bash configure --with-python --prefix=$PREFIX
make
make install
