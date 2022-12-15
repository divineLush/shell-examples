#!/bin/sh

logit () {
  local LOG_LEVEL=$1
  shift
  # shift positional parameters to the left
  # $@ now contains everything but the first parameter $1
  MSG=$@
  TIMESTAMP=$(date +"%Y-%m-%d %T")
  if [ $LOG_LEVEL = 'ERROR' ] || $VERBOSE
  then
    echo "${TIMESTAMP} ${HOST}: ${LOG_LEVEL} ${MSG}"
    # logger logger -t myscript -p user.${LOG_LEVEL} "msg"
  fi
}

logit info "Processing data..."
