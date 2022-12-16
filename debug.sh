#!/bin/sh -exv
# -e exit on error
# -x print commands as they are executed
# -v print shell input lines as they are read

TEST_VAR="test"
set -x # turn on debugging
echo $TEST_VAR
set +x # turn off debugging
hostnamectl
