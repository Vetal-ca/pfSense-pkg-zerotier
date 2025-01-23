#!/bin/sh
# Install zerotier if it's not already installed
if ! pkg info -e zerotier; then
    pkg add -f ${PREFIX}/zerotier.pkg
    rm ${PREFIX}/zerotier.pkg
fi