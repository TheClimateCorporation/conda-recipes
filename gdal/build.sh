#!/bin/bash

# http://www.michael-joost.de/gdal_install.html
unset CC CPP CXX
#SHELL takes the value of CONFIG_SHELL during build time and if
#CONFIG_SHELL is not set, SHELL defaults to /bin/sh. GDAL builds
#depend on shell features of /bin/bash and builds fail if CONFIG_SHELL
#isn't set.  This would cause the error reported at https://trac.osgeo.org/gdal/ticket/4102
CONFIG_SHELL=/bin/bash bash configure \
    --with-python=$PREFIX/bin/python \
    --with-hdf5=$PREFIX \
    --with-netcdf=$PREFIX \
    --prefix=$PREFIX
make install

ACTIVATE_DIR=$PREFIX/etc/conda/activate.d
DEACTIVATE_DIR=$PREFIX/etc/conda/deactivate.d
mkdir -p $ACTIVATE_DIR
mkdir -p $DEACTIVATE_DIR

cp $RECIPE_DIR/posix/activate.sh $ACTIVATE_DIR/gdal-activate.sh
cp $RECIPE_DIR/posix/deactivate.sh $DEACTIVATE_DIR/gdal-deactivate.sh
