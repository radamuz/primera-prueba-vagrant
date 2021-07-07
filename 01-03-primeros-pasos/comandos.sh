ansible all -m ping -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0

ansible all -a id -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0

ansible all -a id -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -b

ansible madrid -m user -a "name=ramon state=present" -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0

ansible madrid -m user -a "name=ramon state=absent" -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0

ansible madrid -a "cat /etc/passwd" -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0