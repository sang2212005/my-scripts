#!/bin/bash

LOGFILE="/var/log/file_deleted.log"
#X=so ngay

if [[ ! -e $LOGFILE ]]; then
    echo "thu muc log ko ton tai"
    exit 1
fi

echo "ten thu muc ban da nhap la $1 $2"

if [[ ! -e $1 ]]; then
   echo "thu muc khong ton tai!"
   exit 1
fi
#chechk file da ton tai qua so ngay quy dinh chua
if [[  -gt $2 ]]; then
	rm -rf $1
        echo $1 | sudo tee -a $LOGFILE
else
        echo "file chua den ngay nen chua can xoa!"
fi

echo "da xoa file $dir do da ton tai hon $2 ngay!"
exit 0



