ansible apt -m ping -i hosts

ansible apt -a id -i hosts

ansible apt -a id 

sudo mkdir group_vars

cd /etc/ansible/group_vars

sudo su

echo "ansible_become: True" > apt

ansible apt -a id 

sudo mkdir host_vars

cd /etc/ansible/host_vars 

sudo su

echo "ansible_become: False" > 192.168.0.251

ansible apt -a id 
