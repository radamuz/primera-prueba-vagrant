ansible-vault create secreto.yml

ansible-vault edit secreto.yml

ansible-vault encrypt secreto.yml

ansible-vault decrypt secreto.yml

ansible-vault view secreto.yml

ansible-playbook vault.yml

ansible-playbook -e "@secreto.yml" --ask-vault-pass vault.yml

ansible-playbook -e "@secreto.yml" --vault-password-file=password-file vault.yml