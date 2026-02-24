#!/bin/bash

CONFIG="/etc/myapp.cfg"

if [[ ! -f $CONFIG ]]; then
   echo "file khong ton tai"
   exit 1
fi

#tao file back up (.bak)
sudo cp "$CONFIG" "$CONFIG.bak"

#thay cau hinh
sudo sed -i 's/^Timeout=30$/Timeout=60(hahaha 30 qua 60 roi do)/' $CONFIG

echo "cap nhat Timeout thanh 60 thanh cong"
exit 0



#=~^[0-9]+$

