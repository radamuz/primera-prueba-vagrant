# Handler es una tarea que solo se ejecutará en caso de que otra tarea le llame. El uso más común es reiniciar un servicio cuando se cambie la configuración
ansible-playbook --syntax-check sshd.yml

sudo cp /etc/ssh/sshd_config .

ansible-playbook sshd.yml -i ../02-12-esenciales/inventarios1/ 

cd ~/primera-prueba-vagrant/vagrant-multi-machine

vagrant ssh server1

systemctl status sshd

# Si el archivo es modificado actuará el handler, si no es modificado y en el destino está exactamente igual que en el origen NO actuará el handler