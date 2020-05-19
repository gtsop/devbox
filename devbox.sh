#!/bin/bash

echo "Hello World!"

which vim >& /dev/null

if [ "$?" -eq "0" ]; then
  echo "[x] vim exists"
else
  echo "[ ] vim exists"
fi

which tmux >& /dev/null

if [ "$?" -eq "0" ]; then
  echo "[x] tmux exists"
else
  echo "[ ] tmux exists"
fi
