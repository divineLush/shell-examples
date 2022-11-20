#!/bin/sh

HOST="archlinux.org"
# only execute echo if $HOST is reachable
ping -c 1 $HOST && echo "$HOST reachable"
# only execute echo if $HOST is unreachable
ping -c 1 $HOST || echo "$HOST unreachable"
# execute echo anyway
ping -c 1 $HOST ; echo "$HOST unreachable"

ping -c 1 $HOST
if [ "$?" -ne "0" ]
then
  echo "$HOST unreachable"
  # explicit exit status
  exit 1
else
  exit 0
fi
