#!/bin/bash
#nhap so thang (1-12)
echo  "Nhap 1 thang bat ki di ku:"
read  month
#check and print
if [[ $# -eq 0 ]]; then
	echo "nhap so j di chu ku,chon thang deeee!!!"
	exit 1
fi
case "$month" in
	"1")	echo "thang bro chon la : January!!!" ;;
	"2")    echo "thang bro chon la : Febuary!!!" ;;
	"3")    echo "thang bro chon la : Match!!!" ;;
	"4")    echo "thang bro chon la : April!!!" ;;
	"5")    echo "thang bro chon la : May!!!" ;;
	"6")    echo "thang bro chon la : June!!!" ;;
	"7")    echo "thang bro chon la : July!!!" ;;
	"8")    echo "thang bro chon la : August!!!" ;;
	"9")    echo "thang bro chon la : September!!!" ;;
	"10")   echo "thang bro chon la : October!!!" ;;
	"11")   echo "thang bro chon la : November!!!" ;;
	"12")   echo "thang bro chon la : December!!!" ;;
	*   )    echo "m dua t a,thang j day ku??!!!" ;;
   esac

