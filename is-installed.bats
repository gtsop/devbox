#!/usr/bin/env bats

load is-installed

TEMP_PATH=`mktemp -d`
TEMP_SOFTWARE=`mktemp -p $TEMP_PATH`

setup() {
  touch $TEMP_SOFTWARE
  chmod +x $TEMP_SOFTWARE
}

@test "isInstalled returns 0 when software is installed" {
  PATH="$PATH:$TEMP_PATH" run isInstalled $(basename $TEMP_SOFTWARE)
  [ "$status" -eq 0 ]
}

@test "isInstalled returns 1 when software is not installed" {
  run isInstalled $(basename $TEMP_SOFTWARE)
  [ "$status" -eq 1 ]
}

teardown() {
  rm -r $TEMP_PATH
}
