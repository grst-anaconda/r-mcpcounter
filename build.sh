#!/bin/bash

# R refuses to build packages that mark themselves as Priority: Recommended
mv Source/DESCRIPTION Source/DESCRIPTION.old
grep -v '^Priority: ' Source/DESCRIPTION.old > Source/DESCRIPTION

$R CMD INSTALL --build ./Source

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
