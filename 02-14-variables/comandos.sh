ansible-playbook variables.yml

ansible-playbook variables2.yml -i ../02-12-esenciales/inventarios0

cat /tmp/hosts

# Obtener la lista de todas las variables que nosotros obtenemos del servidor
ansible localhost -m setup | less

ansible localhost -m setup | grep -e ansible_hostname -e ansible_fqdn

ansible localhost -m setup | grep -e ansible_fqdn | cut -d\" -f4

ansible-playbook variables2.yml -i ../02-12-esenciales/inventarios0 -e miip=16.16.16.16
