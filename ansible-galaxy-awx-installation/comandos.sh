# No es necesario ya que esta colección solo nos permitirá administrar el servicio de awxcon ansible
ansible-galaxy collection install awx.awx

ansible-galaxy collection install community.general

ansible-playbook instala-awx.yml

ansible-playbook instala-awx-2.yml -i inventory -e mypass=debianuser123