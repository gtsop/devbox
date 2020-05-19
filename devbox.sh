#!/usr/bin/env bash

echo "Hello World!"

source is-installed.bash

isInstalled vim

if [ "$?" -eq "0" ]; then
  echo "[x] vim exists"
else
  echo "[ ] vim exists"
fi

isInstalled tmux

if [ "$?" -eq "0" ]; then
  echo "[x] tmux exists"
else
  echo "[ ] tmux exists"
fi

isInstalled git

if [ "$?" -eq "0" ]; then
  echo "[x] git exists"
else
  echo "[ ] git exists"
fi
