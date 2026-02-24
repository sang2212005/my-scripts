#!/bin/bash
#nhap cac tham so
echo "hay nhap tham so phep tinh gom a,s,m,d"
read phep_tinh
echo "hay nhap tham so gia tri thu nhat"

read m
echo "hay nhap tham so gia tri thu hai"
read n
#
#cac ham tinh toan
add(){
  echo "ket qua cua phep cong la:$(($m+$n)) "
}

sub(){
if [[ $m -ge $n ]]; then
 echo "ket qua cua phep tru la:$(($m-$n)) "
     else
	echo "ket qua se la 1 gia tri am nen bo eo tinh cho m"
	echo "nhap lai m>n di ku"
	exit 1
fi
}

mul(){
  echo "ket qua cua phep nhan la:$(($m*$n))"
}

div(){
if [[ $n -eq 0 ]]; then
    echo "n bang 0 r chia s dc ku!!!"
    exit 1
    else
        echo "ket qua cua phep chia la:$(($m/$n))"
fi
}
#
#ep ham vs tham so
if [[ $phep_tinh == a ]]; then
     add
  elif [[ $phep_tinh == s ]]; then
     sub
  elif [[ $phep_tinh == m ]]; then
     mul
  else
     div
fi
#
#thong bao
echo "hoan tat phep toan!!!"
exit 0
