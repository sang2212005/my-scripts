#!/bin/bash

LOGFILE="/var/log/restore.log"
RESTORE_DIR="/restore"

# 1. Validate tham số
if [ $# -ne 1 ]; then
    echo "Usage: $0 <path_to_tar.gz>"
    exit 1
fi

ARCHIVE="$1"

# 2. Kiểm tra file tồn tại
if [ ! -f "$ARCHIVE" ]; then
    echo "File khong ton tai: $ARCHIVE" | sudo tee -a "$LOGFILE"
    exit 1
fi

# 3. Tạo thư mục /restore nếu chưa có
sudo mkdir -p "$RESTORE_DIR"

echo "=== Restore started at $(date) ===" | sudo tee -a "$LOGFILE"

# 4. Giải nén
sudo tar -xzvf "$ARCHIVE" -C "$RESTORE_DIR" >> "$LOGFILE" 2>&1

# 5. Kiểm tra exit status
if [ $? -eq 0 ]; then
    echo "Restore thanh cong luc $(date)" | sudo tee -a "$LOGFILE"
else
    echo "Restore THAT BAI luc $(date)" | sudo tee -a "$LOGFILE"
fi
