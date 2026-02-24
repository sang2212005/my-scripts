#!/bin/bash

LOGFILE="/var/log/auth.log"

if [[ ! -f $LOGFILE ]];  then
echo "file khong ton tai"
fi

declare -a fail_count=0

tail -F "$LOGFILE" | while read line
do
if [[ $LOGFILE==*"Fail login"* ]]; then
   ip=$(echo "$line" | awk '{print $(NF-3)}')
   ((fail-count[$ip]++))
fi
done

for ip in "${!fail_count[@]}"   #duyet tat ca key
do
    echo " $ip - ${fail_count[$ip]} attempts "
done | sort -nr | head -


