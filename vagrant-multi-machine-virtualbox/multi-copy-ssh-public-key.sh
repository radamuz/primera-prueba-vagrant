#!/bin/sh
file="$1"
# file_tr=$(cat "$file" | tr " " ",")
file_tr=$(tr " " "," < $file)
for line in $file_tr
do
    ip=$(echo "$line" | cut -d "," -f1)
    user=$(echo "$line" | cut -d "," -f2)
    pass=$(echo "$line" | cut -d "," -f3)
    sshpass -p "$pass" ssh-copy-id -i ~/.ssh/id_rsa.pub -oStrictHostKeyChecking=no "$user"@"$ip"
done