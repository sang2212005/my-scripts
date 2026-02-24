#!/bin/bash
#nhap vao so 1 hoac 2,neu khac thi bao loi
echo "nhap so 1 hoac 2 di bro"
read so_nhap
if [ $so_nhap -eq 1 ];
then export caution="yes"
else
	if [ $so_nhap -eq 2 ];
	then export caution="no"
	else
		export caution="unknown"
	fi
fi

echo "thong bao co gia tri la:$caution"
exit 1
