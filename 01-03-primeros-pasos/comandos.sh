ansible all -m ping -i ../02-12-esenciales/inventarios0/

ansible all -a id -i ../02-12-esenciales/inventarios0/

ansible all -a id -i ../02-12-esenciales/inventarios0/ -b

ansible madrid -m user -a "name=ramon state=present" -i ../02-12-esenciales/inventarios0/

ansible madrid -m user -a "name=ramon state=absent" -i ../02-12-esenciales/inventarios0/

ansible madrid -a "cat /etc/passwd" -i ../02-12-esenciales/inventarios0/