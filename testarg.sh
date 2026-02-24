#!/bin/bash

#kiem tra xem co argument chua va in thong bao
if [[ $# -eq 0 ]]; then
	echo "usage :$0 agrument"
	exit 1
fi
echo $1
exit 0

