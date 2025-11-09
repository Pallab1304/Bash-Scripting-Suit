#!/bin/bash


LOG_FILE="/var/log/syslog"

echo "🔍 Monitoring $LOG_FILE for errors..."
tail -n 20 "$LOG_FILE" | grep -iE "error|fail"

if [ $? -eq 0 ]; then
    echo "⚠️  Potential issues found in logs!"
else
    echo "✅ Logs are clean."
fi
