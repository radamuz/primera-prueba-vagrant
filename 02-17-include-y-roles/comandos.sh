ansible-playbook --syntax-check include.yml

ansible-playbook include.yml -i ../02-12-esenciales/inventarios1/

ansible-playbook copy-apache2-conf-to-localhost.yml -i ../02-12-esenciales/inventarios0/

ansible-playbook --syntax-check instalar.yml

ansible-playbook instalar.yml -i ../02-12-esenciales/inventarios0/