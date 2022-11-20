#!/bin/sh

hello() {
  for NAME in $@
  do
    echo "Hello $NAME"
  done
}

hello John Jane Johnny
