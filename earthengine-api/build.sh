#!/bin/bash

# `setuptools` tries to fetch and install dependencies, causing conda build
# to fail. Disable here and use conda for dependency management.
# See: https://groups.google.com/a/continuum.io/forum/#!msg/conda/3Jw2cnsL_v8/IzxTSiQqomEJ
$PYTHON setup.py install \
    --single-version-externally-managed \
    --record="$RECIPE_DIR/record.txt"  # or /dev/null
