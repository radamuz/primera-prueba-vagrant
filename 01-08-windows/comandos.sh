# Si necesitamos especificar los usuarios
ansible windows -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -c winrm -m win_ping

ansible windows -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -c winrm -u vagrant -k -m win_ping

ansible windows -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -c winrm -u vagrant -k -m win_ping -e ansible_winrm_server_cert_validation=ignore

ansible windows -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -c winrm -u vagrant -k -m setup -e ansible_winrm_server_cert_validation=ignore

# Sin especificar los usuarios se puede hacer, pero deben de estar indicados en el inventario
ansible windows -i /home/radamuz/primera-prueba-vagrant/02-12-esenciales/inventarios0 -c winrm -m setup -e ansible_winrm_server_cert_validation=ignore