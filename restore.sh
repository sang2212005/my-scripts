#!/bin/bash

LOGFILE="/var/log/restore.log"
RESTORE_DIR="/restore"

#Nhap tham so duong dan file
if[ $# -ne 1 ]; then
  echo "Usage:$0 <duong dan tar.gz>"
  exit 1
fi

ARCHIVE="$1"

#kiem tra file co ton tai ko
if[ ! -f "$ARCHIVE" ]; then
echo "file $ARCHIVE ko ton tai!!!" | sudo tee -a "$LOGFILE"
exit 1
fi

#giai nen vao /restore
mkdir -p ./restore
tar -xzvf "$ARCHIVE" -C >> "$LOGFILE" 2>&1

#ghi log vao /var/log/restore.
if[ $? -eq 0 ]; then
  echo "Restore thanh cong luc $(date)" | sudo tee -a "$LOGFILE"
else
  echo "Restore that bai luc $(date)" | sudo tee -a "$LOGFILE"
fi

