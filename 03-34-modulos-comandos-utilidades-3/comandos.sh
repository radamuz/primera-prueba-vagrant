ansible-playbook modulos_set_facts2.yml -i ../02-12-esenciales/inventarios0/

ansible-playbook modulos_wait_for.yml -i ../02-12-esenciales/inventarios0/

nc -l 8080

ansible-playbook modulos_wait_for2.yml -i ../02-12-esenciales/inventarios0/

touch /tmp/exista

rm /tmp/exista