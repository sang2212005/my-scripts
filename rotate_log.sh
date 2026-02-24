


#!/bin/bash

LOGFILE="/var/log/myapp.log"
DATE=$(date +%F)

if [[ ! -f "$LOGFILE" ]]; then
   echo "file khong ton tai nha"
   exit 1
fi

if [[ ! -w "$(dirname "$LOGFILE")" ]]; then   #kiem tra quyen ghi cua thu muc chua file log
   echo "file khong co quyen ghi thu muc"
   exit 1
fi

mv "$LOGFILE" "$LOGFILE.$DATE"

touch "$LOGFILE"     #nen dung ki thuat copy and truncate  (cp and >) vì dù đã tạo 1 logfile mới nhưng bản chất vẫn sẽ ghi vào logfile cũ
                     # cp $LOGFILE "$LOGFILE.$DATE"
		     # > "$LOGFILE"

echo "rotate thanh cong"
exit 0

