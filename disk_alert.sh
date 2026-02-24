
#!/bin/bash


echo "đang kiểm tra dung lượng đĩa...."


df -h --output=source,pcent |
tail -n +2 |
awk '{gsub(/%/, "", $2); print $2}' |
if [[ $2 -gt 80 ]]; then
   echo "Canh bao dung luong dia dang vuot qua 80% !!!"
   exit 0
else
   echo "Dung luong dang o muc an toan!!!"
fi





