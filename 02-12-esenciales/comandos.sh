ansible-playbook -i ../02-12-esenciales/inventarios0 ../02-11-introduccion-playbooks/copiar-hosts.yml --list-hosts

# Absolutamente todos los servidores que están en el grupo servweb y en el grupo madrid
ansible-playbook -i ../02-12-esenciales/inventarios0 ../02-11-introduccion-playbooks/copiar-hosts.yml --list-hosts --limit servweb:madrid

# Todos los servidores que están dentro del grupo servweb y del grupo madrid
ansible-playbook -i ../02-12-esenciales/inventarios0 ../02-11-introduccion-playbooks/copiar-hosts.yml --list-hosts --limit 'servweb:&madrid'

# Aquellos servidores que estén en el grupo servweb y no en el grupo madrid
ansible-playbook -i ../02-12-esenciales/inventarios0 ../02-11-introduccion-playbooks/copiar-hosts.yml --list-hosts --limit 'servweb:!madrid'