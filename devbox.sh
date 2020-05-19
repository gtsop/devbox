#!/usr/bin/env bash

echo "Hello World!"

source is-installed.bash

isInstalled vim

if isInstalled vim; then
  echo "[x] vim exists"
else
  echo "[ ] vim exists"
fi

if isInstalled tmux; then
  echo "[x] tmux exists"
else
  echo "[ ] tmux exists"
fi

if isInstalled git; then
  echo "[x] git exists"
else
  echo "[ ] git exists"
fi
