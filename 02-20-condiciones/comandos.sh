ansible-playbook instalar.yml -i ../02-12-esenciales/inventarios0/

curl http://192.168.0.251
curl http://192.168.0.253

ansible-playbook instalar.yml -i ../02-12-esenciales/inventarios0/ -e '{"lista_usuarios": [root2,usuario2]}'

ansible-playbook copy-httpd-conf-to-localhost.yml -i ../02-12-esenciales/inventarios0/

ansible curso02 -i ../02-12-esenciales/inventarios0 -m setup -a 'filter=ansible_distribution_version'

ansible curso04 -i ../02-12-esenciales/inventarios0 -m setup -a 'filter=ansible_distribution_version'

ansible-playbook instalar.yml -i ../02-12-esenciales/inventarios0/ -e '{"lista_usuarios": [root2,usuario2,jose]}'