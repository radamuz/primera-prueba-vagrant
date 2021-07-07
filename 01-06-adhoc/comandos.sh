ansible all -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -m copy -a "src=/etc/hosts dest=/etc/hosts"

ansible all -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -m copy -a "src=/etc/hosts dest=/etc/hosts" -b

ansible all -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -m copy -a "src=/etc/hosts dest=/etc/hosts" -b

ansible all -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -m apt -a "name=vim state=present"

ansible all -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -m apt -a "name=vim state=present" -b

ansible all -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -m apt -a "name=apache2 state=present" -b

ansible all --limit curso03,curso04 -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -m yum -a "name=httpd state=present" -b

ansible all --limit curso03,curso04 -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -m yum -a "name=apache2 state=present" -b

ansible all --limit curso03,curso04 -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -m yum -a "name=* state=latest" -b

# En curso03 se instala apache2 con yum y en curso04 se instala httpd con yum

ansible all -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -m setup -a 'filter=ansible_distribution_version'

ansible all -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 --list-host

ansible all --limit curso01 -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 --list-host

# Con -C comprobamos las acciones que se van a realizar
ansible all --limit curso04 -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -b -m yum -C -a "name=httpd state=absent"

# Con -v obtenemos más información
ansible all --limit curso04 -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -b -m yum -v -C -a "name=httpd state=absent"

# Podemos poner más verbosidad
ansible all --limit curso04 -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -b -m yum -vvvvv -C -a "name=httpd state=absent"