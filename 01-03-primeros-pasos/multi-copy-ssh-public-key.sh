# for server in `cat server.txt`;  
# do  
#     sshpass -p $password ssh-copy-id -i ~/.ssh/id_rsa.pub $user@$server
# done

file="hosts.txt"
lines=$(cat $file)
file_tr=`cat $file | tr " " ","`

for line in $file_tr;
do
    ip=`echo $line | cut -d "," -f1`;
    user=`echo $line | cut -d "," -f2`;
    pass=`echo $line | cut -d "," -f3`;
    echo ip=$ip user=$user pass=$pass
done