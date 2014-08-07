#!/bin/bash

# We need libsuitesparse-dev for libcholmod.a
ls /usr/lib/libcholmod.so > /dev/null ||
  (echo "Install suitesparse via e.g. 'apt-get install libsuitesparse-dev'" ;
   exit 1)

$PYTHON setup.py install
