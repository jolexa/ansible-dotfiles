check:
	ansible-playbook -i hosts site.yml --check --diff

install-local:
	ansible-playbook -i hosts site.yml -c local
