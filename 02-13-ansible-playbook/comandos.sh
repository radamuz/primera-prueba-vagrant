ansible-playbook --syntax-check ../02-11-introduccion-playbooks/copiar-hosts.yml

ansible-playbook --list-tasks ../02-11-introduccion-playbooks/copiar-hosts.yml

ansible-playbook --list-tasks copiar-hosts.yml

ansible-playbook -i ../02-12-esenciales/inventarios0 --step copiar-hosts.yml 

ansible-playbook -i ../02-12-esenciales/inventarios0 --start-at-task="Copiar /etc/nsswitch.conf" copiar-hosts.yml 

# En vez de hacer 5 tareas en paralelo se harán una por una
ansible-playbook -i ../02-12-esenciales/inventarios0 --start-at-task="Copiar /etc/nsswitch.conf" copiar-hosts.yml -f1

# Con -v vemos el debug