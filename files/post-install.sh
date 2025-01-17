#!/bin/sh

# Ensure pkg is available
if ! command -v pkg >/dev/null 2>&1; then
    echo "Error: pkg is not installed."
    exit 1
fi

# Install zerotier package
echo "Installing zerotier-${ZEROTIER_VERSION}.txz..."
pkg add http://pkg.freebsd.org/freebsd:12:x86:64/latest/All/zerotier-${ZEROTIER_VERSION}.txz
if [ $? -ne 0 ]; then
    echo "Failed to install zerotier-${ZEROTIER_VERSION}.txz"
    exit 1
fi

echo "zerotier-${ZEROTIER_VERSION}.txz installed successfully."
exit 0