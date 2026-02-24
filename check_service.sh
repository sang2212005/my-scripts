#!/bin/bash

echo "nhap ten service"
read service

if systemctl list-unit-files | grep -q "$service.service"; then
    echo "Service tồn tại"
else
    echo "Service không tồn tại"
    exit 1
fi

sudo systemctl start $service

if systemctl status $service | grep -q "runing"; then
    echo "process dang chay"
else
   echo "process khong chay"
   echo " Warning!Process is not runing---$(date)" | sudo tee -a $LOGFILE > /dev/null 2>&1
fi
