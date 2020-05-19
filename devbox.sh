#!/usr/bin/env bash

source is-installed.bash

echo "Installed software:"

for software in git tmux vim; do
  if isInstalled $software; then
    echo "[x] $software"
  else
    echo "[ ] $software"
  fi
done
