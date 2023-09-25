#!/bin/bash
# clean.sh by Nicholas Buckley


if [ ! -e buildroot/output/images ]; then
echo "Build is clean! No images made!"

else
cd buildroot
echo "Cleaning!"
make distclean
fi


