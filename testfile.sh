x#!/bin/bash

#Prompts the user for a directory name and then creates it with mkdir.
echo "ghi ra ten thu muc de tao nao bro:"
read new_dir

#luu thu muc goc de co the return no(hoac co the push,pop)
orig_dir=$(pwd)

#kiem tra de chac rang thu muc ton tai
[[ -d $new_dir ]] && echo "$new_dir ton tai,aborting" && exit
mkdir $new_dir

#chuyen den thu muc moi tao va in ra duong dan cua no
cd $new_dir
pwd

#tao vai cai file va dung ls de xac nhan rang chung trong rong
for n in 1 2 3 4
do
	touch file$n
done
ls file?

#them noi dung cho cac file vua tao su dung echo va chuyen huong
for names in file?
do
	echo tep tin nay co ten $names > $names
done

#hien thi noi dung vua tao
cat file?

#bai bai user va xoa du lieu
cd $orig_dir
rm -rf $new_dir
echo "bye nha bro,dep nao"
























