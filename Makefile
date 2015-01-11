check:
	ansible-playbook -v -i hosts site.yml --check --diff

install-local:
	ansible-playbook -i hosts site.yml -c local

install-work:
	/usr/bin/grep 172 $(HOME)/.ssh/known_hosts | cut -d, -f1 > hosts2
	ansible-playbook -i hosts2 site.yml --check
	/bin/rm -f hosts2

clean:
	/bin/rm -f hosts2
