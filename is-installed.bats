#!/usr/bin/env bats

load is-installed.sh

@test "isInstalled returns 0 when software is installed" {
  run isInstalled someSoftware
  [ "$status" -eq 0 ]
}

@test "isInstalled returns 1 when software is not installed" {
  run isInstalled someSoftware
  [ "$status" -eq 1 ]
}
