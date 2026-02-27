#!/bin/bash

#Nhan tham so ten thu muc
if [[ -z "$1" ]]; then
    read -p "Nhap ten thu muc: " thumuc
else
    thumuc="$1"
fi

size=0

#kiem tra da nhap ten thu muc chua
if [[ -z "$thumuc" ]]; then
	echo "nhap ten thu muc di chu bro oi!!"
	exit 1
else
	mkdir $thumuc
fi

#dat ten cho file
tenfile=${thumuc}_$(date +%F).tar.gz 

#chuyen thu muc thanh file qua tar
tar -czf $tenfile "$thumuc"

#chuyen file do qua thu muc backupp
mv $tenfile ~/backup

#lay dung luong file
size=$(du -h ~/backup/$tenfile | cut -f1)

#print
echo "Backup thanh cong!"
echo "File: $tenfile"
echo "Size: $size"
exit 0
