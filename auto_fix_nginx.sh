#!/bin/bash

# 1. Tên service cần theo dõi
SERVICE="nginx"

# 2. Kiểm tra trạng thái service
if ! systemctl is-active --quiet $SERVICE; then
    echo "$(date): $SERVICE đang sập! Đang tiến hành cứu hộ..." >> /var/log/sysadmin_fix.log
    
    # 3. Ra lệnh hồi sinh
    sudo systemctl start $SERVICE
    
    # 4. Kiểm tra lại xem đã sống chưa
    if systemctl is-active --quiet $SERVICE; then
        echo "$(date): $SERVICE đã hồi sinh thành công." >> /var/log/sysadmin_fix.log
    else
        echo "$(date): Cứu hộ thất bại! Cần Senior can thiệp gấp." >> /var/log/sysadmin_fix.log
    fi
else
    # Nếu vẫn chạy ngon thì thôi, không cần ghi log cho đầy máy
    exit 0
fi
