ansible-playbook instalar.yml -i ../02-12-esenciales/inventarios0/

curl http://192.168.0.251
curl http://192.168.0.253

ansible-playbook instalar.yml -i ../02-12-esenciales/inventarios0/ -e '{"lista_usuarios": [root2,usuario2]}'