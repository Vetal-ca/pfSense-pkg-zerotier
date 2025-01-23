#!/bin/sh

case $2 in
POST-DEINSTALL)
  echo "Removing zerotier package..."
	pkg delete -y zerotier
	if [ $? -ne 0 ]; then
      echo "Failed to remove zerotier package"
      exit 1
  else
    echo "zerotier package removed successfully."
  fi
	;;
esac

exit 0