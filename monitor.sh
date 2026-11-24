#!/usr/bin/env bash

process=$1
logfile="/var/log/process_log.log"

if [ -z "$process" ]; then
  echo "Enter process name"
  exit 1
fi

if pgrep -x "$process" > /dev/null; then
  echo "Process $process is working"
else
  echo "$(date): Process $process down" >> "$logfile"
fi

