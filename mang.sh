#!/bin/bash
#nhap mang
read -p "Nhap mang di bro oi" -a  mang
#lay so luong phan tu mang
n=${#mang[@]}
tong=0
#tinh tong cac phan tu trong mang
for (( i=0 ; i < n ; i++ )); do
	tong=$((${mang[i]}+tong))
done

#print
echo "tong cac so trong mang ma bro nhap la:$tong"
exit 0
