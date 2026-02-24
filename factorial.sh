!/bin/bash
####
###
##
Nhap so bat ki va bien de tinh giai thua
echo "Hay nhap 1 so di de tinh giai thua nao!!!"
read n
factorial=1
i=1

if  [[ -z "$n" ]]; then
 echo "hay nhap so de tinh giai thua di bro!!!"
 exit 1
fi

#loop tinh giai thua
until [[ $i -gt $n ]]
do
	factorial=$((factorial*i))
	i=$((i+1))
done

#print
echo "ket qua giai thua cua $n la: $factorial"

