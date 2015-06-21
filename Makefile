check:
	ansible-playbook -v -i hosts site.yml --check --diff

install-local:
	ansible-playbook -i hosts site.yml -c local

install-172:
	/usr/bin/grep -E '(172\.1[6789]\.|172\.2[0-9]\.|172\.3[01]\.)' $(HOME)/.ssh/known_hosts | cut -d, -f1 > hosts2
	ansible-playbook -i hosts2 site.yml --check --ask-pass
	/bin/rm -f hosts2

clean:
	/bin/rm -f hosts2
