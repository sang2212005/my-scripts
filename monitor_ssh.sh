
#!/bin/bash

LOGFILE="/var/log/auth.log"

if [ ! -f "$LOGFILE" ]; then
    echo "Khong tim thay $LOGFILE"
    exit 1
fi

echo "Dang theo doi SSH login..."

tail -F "$LOGFILE" | while read line
do
    if echo "$line" | grep -q "Failed password"; then          #if [[ $line == *"Failed password"* ]]; then
         echo "[WARNING] Failed login attempt detected at: $(date)"
    fi
done
