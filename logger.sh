#!/bin/sh

logger "msg"
# logger severity.facility message
logger -p local0.info "msg" # severity = info, facility = local0
# tag message
logger -t myscript -p local0.info "msg"
# include process id
logger -i -t myscript "msg"

journalctl --since "1 min ago"
# look for logs in /var/log/messages or /var/log/syslog
