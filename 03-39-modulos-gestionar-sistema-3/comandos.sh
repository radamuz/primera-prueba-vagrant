ansible-playbook modulos_sistemas2.yml -i ../02-12-esenciales/inventarios0/

ansible-playbook modulos_sistemas3.yml -i ../02-12-esenciales/inventarios0/

iptables -L -v -n

ansible-doc mount

sudo sysctl -a | grep ip.fo