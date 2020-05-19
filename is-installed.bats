#!/usr/bin/env bats

load is-installed

TEMP_PATH=`mktemp -d`
TEMP_SOFTWARE=`mktemp $TEMP_PATH/devbox.XXXXXX`

setup() {
  touch $TEMP_SOFTWARE
  chmod +x $TEMP_SOFTWARE
}

@test "isInstalled returns 0 when software is installed" {
  PATH="$PATH:$TEMP_PATH" run isInstalled $(basename $TEMP_SOFTWARE)
  [ "$status" -eq 0 ]

  # There should be no output
  [ "$output" == "" ]
}

@test "isInstalled returns 1 when software is not installed" {
  run isInstalled $(basename $TEMP_SOFTWARE)
  [ "$status" -eq 1 ]

  # There should be no output
  [ "$output" == "" ]
}

teardown() {
  rm -r $TEMP_PATH
}
