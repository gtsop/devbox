#!/bin/bash

echo "Hello World!"

which vim >& /dev/null

if [ "$?" -eq "0" ]; then
  echo "[x] vim exists"
else
  echo "[ ] vim exists"
fi
